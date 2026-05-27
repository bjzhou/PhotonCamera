.class public final Lcox;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field private final A:Lcor;

.field private final B:Lcsa;

.field private final C:Ljava/util/concurrent/Executor;

.field private final D:Loiw;

.field private final E:Loiw;

.field private final F:Lkbc;

.field private final G:Lczx;

.field private H:Lnou;

.field private I:Lcur;

.field private final J:Ldfa;

.field private final K:Ldja;

.field private final L:Lcvr;

.field public final b:Ljuh;

.field public final c:Ldbf;

.field public final d:Ljava/util/List;

.field public final e:Litm;

.field public final f:Liff;

.field public final g:Lhkj;

.field public final h:Ldns;

.field public final i:Ldde;

.field public final j:Ldhi;

.field final k:Lifj;

.field public final l:Leoa;

.field public final m:Lenz;

.field public n:Lcpk;

.field public o:Lcrz;

.field public p:Z

.field public q:Z

.field public r:Ldbb;

.field public s:I

.field public final t:Ljava/lang/Object;

.field public u:Lcuo;

.field public final v:Lcvr;

.field public final w:Ldfa;

.field public final x:Lfvx;

.field public final y:Lbkc;

.field public final z:Ljew;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/CamcorderController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcox;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lfvx;Lcor;Lcvr;Lcsa;Ljava/util/concurrent/Executor;Lbkc;Loiw;Loiw;Ldbf;Litm;Leoa;Ljuh;Lkbc;Liff;Ljew;Lhkj;Ldfa;Ldja;Ldns;Ldfa;Lcvr;Ldde;Lczx;Ldhi;[B[B[B[B)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcox;->d:Ljava/util/List;

    new-instance v1, Lcou;

    invoke-direct {v1, p0}, Lcou;-><init>(Lcox;)V

    iput-object v1, v0, Lcox;->k:Lifj;

    new-instance v1, Lcov;

    invoke-direct {v1, p0}, Lcov;-><init>(Lcox;)V

    iput-object v1, v0, Lcox;->m:Lenz;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcox;->t:Ljava/lang/Object;

    move-object v1, p2

    iput-object v1, v0, Lcox;->A:Lcor;

    move-object v1, p3

    iput-object v1, v0, Lcox;->L:Lcvr;

    move-object v1, p4

    iput-object v1, v0, Lcox;->B:Lcsa;

    move-object v1, p1

    iput-object v1, v0, Lcox;->x:Lfvx;

    move-object v1, p5

    iput-object v1, v0, Lcox;->C:Ljava/util/concurrent/Executor;

    move-object v1, p6

    iput-object v1, v0, Lcox;->y:Lbkc;

    move-object v1, p7

    iput-object v1, v0, Lcox;->D:Loiw;

    move-object v1, p8

    iput-object v1, v0, Lcox;->E:Loiw;

    move-object v1, p9

    iput-object v1, v0, Lcox;->c:Ldbf;

    move-object v1, p10

    iput-object v1, v0, Lcox;->e:Litm;

    move-object v1, p11

    iput-object v1, v0, Lcox;->l:Leoa;

    move-object v1, p12

    iput-object v1, v0, Lcox;->b:Ljuh;

    move-object v1, p13

    iput-object v1, v0, Lcox;->F:Lkbc;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcox;->f:Liff;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcox;->z:Ljew;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcox;->g:Lhkj;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcox;->J:Ldfa;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcox;->K:Ldja;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcox;->h:Ldns;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcox;->w:Ldfa;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcox;->v:Lcvr;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcox;->i:Ldde;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcox;->G:Lczx;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcox;->j:Ldhi;

    return-void
.end method

.method private final r()Z
    .locals 2

    iget-object v0, p0, Lcox;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcox;->n:Lcpk;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final s(I)V
    .locals 84

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v3, v1, Lcox;->t:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Lcox;->o:Lcrz;

    sget-object v5, Lcrx;->b:Lcrx;

    invoke-virtual {v4, v5}, Lcrz;->a(Lcrx;)V

    new-instance v4, Ldbb;

    invoke-direct {v4}, Ldbb;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ldbb;->c(I)V

    invoke-virtual {v4, v5}, Ldbb;->f(I)V

    invoke-virtual {v4, v5}, Ldbb;->e(I)V

    sget-object v6, Lklv;->b:Lklv;

    invoke-virtual {v4, v6}, Ldbb;->b(Lklv;)V

    const/4 v6, 0x1

    iput v6, v4, Ldbb;->h:I

    iput v6, v4, Ldbb;->i:I

    sget-object v7, Lika;->a:Lika;

    invoke-virtual {v4, v7}, Ldbb;->d(Lika;)V

    invoke-virtual {v4, v5}, Ldbb;->a(Z)V

    iput v2, v4, Ldbb;->i:I

    iget-object v7, v1, Lcox;->c:Ldbf;

    invoke-virtual {v7}, Ldbf;->d()Lklv;

    move-result-object v7

    invoke-virtual {v4, v7}, Ldbb;->b(Lklv;)V

    iget-object v7, v1, Lcox;->x:Lfvx;

    invoke-virtual {v7}, Lfvx;->a()Lika;

    move-result-object v7

    invoke-virtual {v4, v7}, Ldbb;->d(Lika;)V

    iput-object v4, v1, Lcox;->r:Ldbb;

    iget-object v4, v1, Lcox;->F:Lkbc;

    const-string v7, "CamcorderControllers#createCaptureSession"

    invoke-interface {v4, v7}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object v4

    iget-object v7, v1, Lcox;->g:Lhkj;

    invoke-virtual {v7}, Lhkj;->a()V

    iget-object v7, v1, Lcox;->g:Lhkj;

    sget-object v8, Lhki;->a:Lhki;

    invoke-virtual {v7, v8}, Lhkh;->h(Ljava/lang/Enum;)V

    iget-object v7, v1, Lcox;->d:Ljava/util/List;

    invoke-static {v7}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v7

    sget-object v8, Lcot;->b:Lcot;

    invoke-interface {v7, v8}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v7, v1, Lcox;->A:Lcor;

    invoke-static {}, Ljuh;->a()V

    iget-object v8, v7, Lcor;->c:Lkbc;

    const-string v9, "CamcorderCaptureSessionFactory#createNewSession"

    invoke-interface {v8, v9}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object v14

    iget-object v8, v7, Lcor;->i:Lcpe;

    iget-object v9, v7, Lcor;->k:Lfvx;

    iget-object v10, v8, Lcpe;->f:Lcsc;

    if-eqz v10, :cond_0

    move-object/from16 v50, v4

    move-object/from16 v52, v7

    move-object/from16 v51, v14

    goto/16 :goto_23

    :cond_0
    iget-object v10, v8, Lcpe;->g:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v11, v8, Lcpe;->f:Lcsc;

    if-eqz v11, :cond_1

    monitor-exit v10

    move-object/from16 v50, v4

    move-object/from16 v52, v7

    move-object v10, v11

    move-object/from16 v51, v14

    goto/16 :goto_23

    :cond_1
    iget-object v11, v8, Lcpe;->j:Lcvr;

    sget-object v12, Lcua;->b:Lcua;

    invoke-virtual {v11, v12}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljuf;->d(Lkad;)V

    invoke-virtual {v9}, Lfvx;->b()Lkll;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Lfvx;->c()Lkll;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v9, Lfvx;->e:Ljava/lang/Object;

    check-cast v12, Lbkc;

    invoke-virtual {v12}, Lbkc;->e()Landroid/content/Intent;

    move-result-object v12

    iget-object v13, v8, Lcpe;->k:Ldja;

    iget-object v13, v13, Ldja;->a:Ljava/lang/Object;

    check-cast v13, Ldja;

    invoke-virtual {v13, v11}, Ldja;->s(Lkll;)Ldne;

    move-result-object v13

    iget-object v15, v13, Ldne;->a:Ljava/lang/Object;

    check-cast v15, Lklw;

    invoke-virtual {v15}, Lklw;->k()Lklv;

    move-result-object v15

    iget-object v6, v8, Lcpe;->c:Lcxb;

    invoke-virtual {v6}, Lcxb;->a()Lcwx;

    move-result-object v6

    invoke-virtual {v9}, Lfvx;->a()Lika;

    move-result-object v5

    move-object/from16 v50, v4

    sget-object v4, Lika;->t:Lika;

    invoke-virtual {v5, v4}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v8}, Lcpe;->a()Ljwu;

    move-result-object v4

    sget-object v5, Ljws;->b:Ljws;

    goto/16 :goto_1

    :cond_2
    sget-object v4, Lcwx;->e:Lcwx;

    invoke-virtual {v6, v4}, Lcwx;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v8}, Lcpe;->a()Ljwu;

    move-result-object v4

    sget-object v5, Ljws;->c:Ljws;

    goto/16 :goto_1

    :cond_3
    sget-object v4, Lcwx;->c:Lcwx;

    invoke-virtual {v6, v4}, Lcwx;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v8, Lcpe;->b:Ldhi;

    sget-object v5, Ldgu;->G:Ldhj;

    invoke-interface {v4, v5}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v8}, Lcpe;->a()Ljwu;

    move-result-object v4

    sget-object v5, Ljws;->f:Ljws;

    goto/16 :goto_1

    :cond_4
    iget-object v4, v8, Lcpe;->b:Ldhi;

    sget-object v5, Ldhz;->b:Ldhj;

    invoke-interface {v4, v5}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v12}, Lcpe;->c(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Ljwu;->g:Ljwu;

    goto :goto_0

    :cond_5
    iget-object v4, v8, Lcpe;->i:Ldja;

    invoke-virtual {v4, v15}, Ldja;->l(Lklv;)Ljwu;

    move-result-object v4

    goto :goto_0

    :cond_6
    invoke-static {v12}, Lcpe;->c(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Ljwu;->g:Ljwu;

    goto :goto_0

    :cond_7
    iget-object v4, v9, Lfvx;->m:Ljava/lang/Object;

    check-cast v4, Ldqx;

    invoke-virtual {v4, v15}, Ldqx;->a(Lklv;)Ljwu;

    move-result-object v4

    :goto_0
    iget-object v5, v9, Lfvx;->g:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Lcwh;

    iput-object v4, v6, Lcwh;->a:Ljwu;

    invoke-virtual {v9}, Lfvx;->a()Lika;

    move-result-object v6

    check-cast v5, Lcwh;

    invoke-virtual {v5, v6}, Lcwh;->a(Lika;)Lcwg;

    move-result-object v5

    invoke-interface {v5}, Lcwg;->bm()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljws;

    invoke-virtual {v13, v5, v4}, Ldne;->p(Ljws;Ljwu;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v5}, Ljws;->e()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v4, v13, Ldne;->b:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v8, Lcpe;->d:Lfme;

    invoke-virtual {v6}, Lfme;->b()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v4}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v4

    sget-object v6, Lcdm;->c:Lcdm;

    invoke-interface {v4, v6}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljwu;

    goto :goto_1

    :cond_8
    invoke-static {v4}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v4

    sget-object v6, Lcdm;->d:Lcdm;

    invoke-interface {v4, v6}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljwu;

    goto :goto_1

    :cond_9
    sget-object v5, Ljws;->c:Ljws;

    :cond_a
    :goto_1
    invoke-virtual {v9}, Lfvx;->a()Lika;

    move-result-object v6

    iget-object v2, v8, Lcpe;->i:Ldja;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v2, Ldja;->a:Ljava/lang/Object;

    sget-object v17, Ldgu;->a:Ldhk;

    invoke-interface {v1}, Ldhi;->c()V

    iget-object v1, v2, Ldja;->a:Ljava/lang/Object;

    move-object/from16 v51, v14

    sget-object v14, Ldgu;->al:Ldhj;

    invoke-interface {v1, v14}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v2, Ldja;->c:Ljava/lang/Object;

    sget-object v2, Lgzd;->C:Lgzr;

    invoke-interface {v1, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lika;->c:Lika;

    invoke-virtual {v6, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Ljws;->c:Ljws;

    invoke-virtual {v5, v1}, Ljws;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_2

    :cond_b
    const/4 v1, 0x0

    :goto_2
    iget-object v2, v8, Lcpe;->e:Lkog;

    iget-boolean v2, v2, Lkog;->o:Z

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    sget-object v1, Lklv;->b:Lklv;

    invoke-virtual {v15, v1}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_3
    invoke-virtual {v9}, Lfvx;->a()Lika;

    move-result-object v2

    sget-object v6, Lika;->i:Lika;

    if-ne v2, v6, :cond_e

    invoke-virtual {v4}, Ljwu;->b()Lkaf;

    move-result-object v2

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    move-object/from16 v21, v2

    move-object/from16 v52, v7

    move-object/from16 v20, v15

    goto/16 :goto_6

    :cond_e
    sget-object v6, Lika;->c:Lika;

    if-ne v2, v6, :cond_15

    iget-object v2, v8, Lcpe;->b:Ldhi;

    invoke-interface {v2}, Ldhi;->e()V

    if-eqz v1, :cond_f

    sget-object v2, Lmpx;->a:Lmpx;

    move-object/from16 v21, v2

    move-object/from16 v52, v7

    move-object/from16 v20, v15

    goto/16 :goto_6

    :cond_f
    iget-object v2, v13, Ldne;->a:Ljava/lang/Object;

    check-cast v2, Lklw;

    const/16 v6, 0x100

    invoke-virtual {v2, v6}, Lklw;->x(I)Ljava/util/List;

    move-result-object v2

    sget-object v6, Ljwu;->k:Ljwu;

    new-instance v14, Lkaf;

    move-object/from16 v52, v7

    const/4 v7, 0x0

    invoke-direct {v14, v7, v7}, Lkaf;-><init>(II)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkaf;

    move-object/from16 v18, v2

    invoke-static {v7}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v2

    invoke-virtual {v4}, Ljwu;->b()Lkaf;

    move-result-object v19

    move-object/from16 v20, v15

    invoke-static/range {v19 .. v19}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljzr;->m(Ljzr;)Z

    move-result v2

    if-eqz v2, :cond_12

    if-eq v4, v6, :cond_10

    iget v2, v5, Ljws;->i:I

    const/16 v15, 0x3c

    if-eq v2, v15, :cond_10

    iget v2, v5, Ljws;->k:I

    if-ne v2, v15, :cond_11

    iget-object v2, v13, Ldne;->a:Ljava/lang/Object;

    check-cast v2, Lklw;

    invoke-virtual {v2}, Lklw;->k()Lklv;

    move-result-object v2

    sget-object v15, Lklv;->a:Lklv;

    if-ne v2, v15, :cond_11

    :cond_10
    invoke-virtual {v7}, Lkaf;->b()J

    move-result-wide v21

    invoke-virtual {v4}, Ljwu;->a()J

    move-result-wide v23

    cmp-long v2, v21, v23

    if-gtz v2, :cond_12

    :cond_11
    invoke-virtual {v7}, Lkaf;->b()J

    move-result-wide v21

    invoke-virtual {v14}, Lkaf;->b()J

    move-result-wide v23

    cmp-long v2, v21, v23

    if-lez v2, :cond_12

    move-object v14, v7

    move-object/from16 v2, v18

    move-object/from16 v15, v20

    goto :goto_4

    :cond_12
    move-object/from16 v2, v18

    move-object/from16 v15, v20

    goto :goto_4

    :cond_13
    move-object/from16 v20, v15

    invoke-virtual {v14}, Lkaf;->b()J

    move-result-wide v6

    const-wide/16 v18, 0x0

    cmp-long v2, v6, v18

    if-nez v2, :cond_14

    sget-object v2, Lmpx;->a:Lmpx;

    goto :goto_5

    :cond_14
    invoke-static {v14}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    goto :goto_5

    :cond_15
    move-object/from16 v52, v7

    move-object/from16 v20, v15

    sget-object v2, Lmpx;->a:Lmpx;

    :goto_5
    move-object/from16 v21, v2

    :goto_6
    iget-object v2, v9, Lfvx;->a:Ljava/lang/Object;

    invoke-virtual {v4}, Ljwu;->b()Lkaf;

    move-result-object v6

    invoke-static {v6}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v6

    sget-object v7, Ljzr;->c:Ljzr;

    invoke-virtual {v6, v7}, Ljzr;->m(Ljzr;)Z

    move-result v6

    invoke-interface {v2}, Lcqv;->k()Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {v4}, Ljwu;->d()Z

    move-result v2

    if-eqz v2, :cond_16

    iget v2, v5, Ljws;->i:I

    const/16 v7, 0x3c

    if-ne v2, v7, :cond_16

    iget-object v2, v8, Lcpe;->b:Ldhi;

    sget-object v7, Ldgu;->I:Ldhj;

    invoke-interface {v2, v7}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_16
    invoke-virtual {v4}, Ljwu;->c()Z

    move-result v2

    if-eqz v2, :cond_17

    iget v2, v5, Ljws;->i:I

    const/16 v7, 0x3c

    if-ne v2, v7, :cond_17

    iget-object v2, v8, Lcpe;->b:Ldhi;

    sget-object v7, Ldgu;->ah:Ldhj;

    invoke-interface {v2, v7}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_7

    :cond_17
    invoke-virtual {v4}, Ljwu;->d()Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v6, :cond_18

    sget-object v2, Ljwu;->j:Ljwu;

    invoke-virtual {v2}, Ljwu;->b()Lkaf;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_8

    :cond_18
    sget-object v2, Ljwu;->i:Ljwu;

    invoke-virtual {v2}, Ljwu;->b()Lkaf;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_8

    :cond_19
    invoke-virtual {v4}, Ljwu;->b()Lkaf;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_8

    :cond_1a
    :goto_7
    if-eqz v6, :cond_1b

    sget-object v2, Ljwu;->h:Ljwu;

    invoke-virtual {v2}, Ljwu;->b()Lkaf;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_8

    :cond_1b
    sget-object v2, Ljwu;->g:Ljwu;

    invoke-virtual {v2}, Ljwu;->b()Lkaf;

    move-result-object v2

    move-object/from16 v22, v2

    :goto_8
    iget-object v2, v8, Lcpe;->k:Ldja;

    iget-object v2, v2, Ldja;->c:Ljava/lang/Object;

    invoke-virtual {v9}, Lfvx;->a()Lika;

    move-result-object v6

    move-object v7, v2

    check-cast v7, Lcvm;

    iget-object v7, v7, Lcvm;->d:Ljava/lang/Object;

    move-object v14, v2

    check-cast v14, Lcvm;

    invoke-virtual {v14, v11, v4, v6, v1}, Lcvm;->a(Lkll;Ljwu;Lika;Z)Ljxl;

    move-result-object v6

    invoke-interface {v7, v6, v5, v4}, Ljwy;->c(Ljxl;Ljws;Ljwu;)Ljxa;

    move-result-object v6

    sget-object v7, Ljws;->e:Ljws;

    const/4 v14, 0x0

    if-eq v5, v7, :cond_1d

    sget-object v7, Ljws;->f:Ljws;

    if-eq v5, v7, :cond_1d

    invoke-virtual {v9}, Lfvx;->a()Lika;

    move-result-object v7

    move-object v14, v2

    check-cast v14, Lcvm;

    iget-object v14, v14, Lcvm;->c:Ljava/lang/Object;

    check-cast v14, Ldja;

    iget-object v14, v14, Ldja;->a:Ljava/lang/Object;

    invoke-interface {v14}, Ldhi;->c()V

    invoke-virtual {v5}, Ljws;->f()Z

    move-result v14

    if-eqz v14, :cond_1c

    move-object v14, v2

    check-cast v14, Lcvm;

    iget-object v14, v14, Lcvm;->d:Ljava/lang/Object;

    check-cast v2, Lcvm;

    invoke-virtual {v2, v11, v4, v7, v1}, Lcvm;->a(Lkll;Ljwu;Lika;Z)Ljxl;

    move-result-object v2

    invoke-interface {v14, v5, v2}, Ljwy;->a(Ljws;Ljxl;)Ljwx;

    move-result-object v14

    goto :goto_9

    :cond_1c
    move-object v14, v2

    check-cast v14, Lcvm;

    iget-object v14, v14, Lcvm;->d:Ljava/lang/Object;

    check-cast v2, Lcvm;

    invoke-virtual {v2, v11, v4, v7, v1}, Lcvm;->a(Lkll;Ljwu;Lika;Z)Ljxl;

    move-result-object v2

    invoke-interface {v14, v5, v2}, Ljwy;->b(Ljws;Ljxl;)Ljwx;

    move-result-object v14

    :cond_1d
    :goto_9
    iget-object v2, v13, Ldne;->a:Ljava/lang/Object;

    check-cast v2, Lklw;

    invoke-virtual {v2}, Lklw;->u()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const/4 v15, 0x1

    xor-int/2addr v7, v15

    invoke-static {v7}, Lmoz;->p(Z)V

    new-instance v7, Landroid/util/Range;

    move-object/from16 v17, v11

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v7, v11, v11}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Range;

    invoke-virtual {v15}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual {v15}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v23, v11

    sub-int v11, v18, v19

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v24, v15

    sub-int v15, v18, v19

    if-le v11, v15, :cond_1e

    move-object/from16 v11, v23

    move-object/from16 v7, v24

    goto :goto_a

    :cond_1e
    move-object/from16 v11, v23

    goto :goto_a

    :cond_1f
    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v11, v15, :cond_20

    sget-object v2, Lmpx;->a:Lmpx;

    goto :goto_b

    :cond_20
    sget-object v11, Ljws;->a:Ljws;

    if-ne v5, v11, :cond_21

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    goto :goto_b

    :cond_21
    sget-object v11, Lcrt;->a:Landroid/util/Range;

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object v2, Lcrt;->a:Landroid/util/Range;

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    goto :goto_b

    :cond_22
    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    :goto_b
    iget-object v7, v8, Lcpe;->a:Lcrt;

    iget-object v11, v13, Ldne;->a:Ljava/lang/Object;

    check-cast v11, Lklw;

    invoke-virtual {v11}, Lklw;->k()Lklv;

    move-result-object v11

    sget-object v15, Lklv;->a:Lklv;

    if-ne v11, v15, :cond_24

    sget-object v11, Ljws;->c:Ljws;

    if-ne v5, v11, :cond_24

    iget-boolean v7, v7, Lcrt;->b:Z

    if-nez v7, :cond_23

    goto :goto_c

    :cond_23
    const/4 v7, 0x1

    goto :goto_d

    :cond_24
    :goto_c
    sget-object v7, Ljws;->a:Ljws;

    if-ne v5, v7, :cond_25

    const/4 v7, 0x1

    goto :goto_d

    :cond_25
    const/4 v7, 0x0

    :goto_d
    invoke-virtual {v5}, Ljws;->f()Z

    move-result v11

    if-eqz v11, :cond_26

    new-instance v11, Lcrq;

    new-instance v15, Landroid/util/Range;

    move/from16 v47, v1

    iget v1, v5, Ljws;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v18, v9

    iget v9, v5, Ljws;->i:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v15, v1, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {v11, v15, v2, v7}, Lcrq;-><init>(Landroid/util/Range;Lmqp;Z)V

    goto :goto_e

    :cond_26
    move/from16 v47, v1

    move-object/from16 v18, v9

    new-instance v11, Lcrp;

    invoke-direct {v11, v6}, Lcrp;-><init>(Ljxa;)V

    :goto_e
    iget-object v1, v8, Lcpe;->h:Ldja;

    iget-object v2, v1, Ldja;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v2, v1, Ldja;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, v1, Ldja;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v42

    if-eqz v5, :cond_55

    if-eqz v4, :cond_54

    if-eqz v13, :cond_53

    invoke-static {v14}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v24

    invoke-static {v12}, Lcdg;->e(Landroid/content/Intent;)Lmqp;

    move-result-object v25

    if-nez v12, :cond_27

    sget-object v1, Lmpx;->a:Lmpx;

    move-object/from16 v26, v1

    goto :goto_10

    :cond_27
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "android.intent.extra.durationLimit"

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    goto :goto_f

    :cond_28
    sget-object v1, Lmpx;->a:Lmpx;

    :goto_f
    move-object/from16 v26, v1

    :goto_10
    if-nez v12, :cond_29

    sget-object v1, Lmpx;->a:Lmpx;

    move-object/from16 v27, v1

    goto :goto_12

    :cond_29
    const-string v1, "android.intent.extra.sizeLimit"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "android.intent.extra.sizeLimit"

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    goto :goto_11

    :cond_2a
    sget-object v1, Lmpx;->a:Lmpx;

    :goto_11
    move-object/from16 v27, v1

    :goto_12
    move-object/from16 v1, v18

    iget-object v2, v1, Lfvx;->a:Ljava/lang/Object;

    invoke-interface {v2}, Lcqv;->n()Z

    move-result v28

    invoke-interface {v11}, Lcro;->a()Landroid/util/Range;

    move-result-object v29

    if-eqz v29, :cond_52

    invoke-interface {v11}, Lcro;->b()Landroid/util/Range;

    move-result-object v30

    if-eqz v30, :cond_51

    if-eqz v20, :cond_50

    invoke-virtual {v5}, Ljws;->e()Z

    move-result v2

    const/4 v7, 0x1

    xor-int/lit8 v31, v2, 0x1

    iget-object v2, v8, Lcpe;->b:Ldhi;

    sget-object v7, Ldgu;->x:Ldhj;

    invoke-interface {v2, v7}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-nez v2, :cond_2c

    sget-object v2, Lklv;->b:Lklv;

    move-object/from16 v7, v20

    if-ne v7, v2, :cond_2b

    const/16 v32, 0x1

    goto :goto_13

    :cond_2b
    const/16 v32, 0x0

    goto :goto_13

    :cond_2c
    move-object/from16 v7, v20

    const/16 v32, 0x1

    :goto_13
    iget-object v2, v8, Lcpe;->b:Ldhi;

    sget-object v9, Ldgu;->l:Ldhj;

    invoke-interface {v2, v9}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_2d

    sget-object v2, Lklv;->a:Lklv;

    if-ne v7, v2, :cond_2d

    const/16 v33, 0x1

    goto :goto_14

    :cond_2d
    iget-object v2, v8, Lcpe;->b:Ldhi;

    sget-object v9, Ldgu;->m:Ldhj;

    invoke-interface {v2, v9}, Ldhi;->l(Ldhj;)Z

    move-result v2

    move/from16 v33, v2

    :goto_14
    iget-object v2, v13, Ldne;->a:Ljava/lang/Object;

    invoke-interface {v2}, Lkli;->N()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, v8, Lcpe;->i:Ldja;

    invoke-virtual {v2}, Ldja;->o()Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v34, 0x1

    goto :goto_15

    :cond_2e
    const/16 v34, 0x0

    :goto_15
    iget-object v2, v8, Lcpe;->i:Ldja;

    invoke-virtual {v2}, Ldja;->p()Z

    move-result v35

    iget-object v2, v8, Lcpe;->b:Ldhi;

    invoke-interface {v2}, Ldhi;->c()V

    invoke-virtual {v4}, Ljwu;->d()Z

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, v8, Lcpe;->b:Ldhi;

    sget-object v9, Ldgu;->v:Ldhj;

    invoke-interface {v2, v9}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_30

    sget-object v2, Ljws;->c:Ljws;

    if-eq v5, v2, :cond_2f

    goto :goto_16

    :cond_2f
    const/16 v36, 0x1

    goto :goto_17

    :cond_30
    :goto_16
    iget-object v2, v8, Lcpe;->b:Ldhi;

    sget-object v9, Ldgu;->w:Ldhj;

    invoke-interface {v2, v9}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_31

    sget-object v2, Ljws;->a:Ljws;

    if-ne v5, v2, :cond_31

    const/16 v36, 0x1

    goto :goto_17

    :cond_31
    const/16 v36, 0x0

    :goto_17
    iget-object v2, v8, Lcpe;->c:Lcxb;

    invoke-virtual {v2}, Lcxb;->a()Lcwx;

    move-result-object v2

    new-instance v9, Lmwl;

    invoke-direct {v9}, Lmwl;-><init>()V

    invoke-virtual {v8, v5, v4, v7, v2}, Lcpe;->b(Ljws;Ljwu;Lklv;Lcwx;)Lmvv;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lmyu;

    iget v12, v12, Lmyu;->c:I

    const/4 v14, 0x0

    :goto_18
    if-ge v14, v12, :cond_32

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljwu;

    invoke-virtual {v8, v13, v5, v15, v2}, Lcpe;->d(Ldne;Ljws;Ljwu;Lcwx;)Lmvv;

    move-result-object v15

    invoke-virtual {v9, v15}, Lmwl;->h(Ljava/lang/Iterable;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_18

    :cond_32
    invoke-virtual {v9}, Lmwl;->f()Lmwn;

    move-result-object v2

    invoke-virtual {v2}, Lmvm;->v()Lmvv;

    move-result-object v37

    if-eqz v37, :cond_4f

    iget-object v2, v8, Lcpe;->c:Lcxb;

    invoke-virtual {v2}, Lcxb;->a()Lcwx;

    move-result-object v2

    invoke-virtual {v8, v13, v5, v4, v2}, Lcpe;->d(Ldne;Ljws;Ljwu;Lcwx;)Lmvv;

    move-result-object v38

    if-eqz v38, :cond_4e

    iget-object v2, v8, Lcpe;->c:Lcxb;

    invoke-virtual {v2}, Lcxb;->a()Lcwx;

    move-result-object v2

    invoke-virtual {v8, v5, v4, v7, v2}, Lcpe;->b(Ljws;Ljwu;Lklv;Lcwx;)Lmvv;

    move-result-object v39

    if-eqz v39, :cond_4d

    invoke-virtual {v1}, Lfvx;->a()Lika;

    move-result-object v2

    sget-object v9, Lika;->t:Lika;

    invoke-virtual {v9, v2}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    sget-object v2, Lgya;->t:Lgya;

    move-object/from16 v41, v2

    goto :goto_1a

    :cond_33
    if-eqz v47, :cond_34

    sget-object v2, Lgya;->u:Lgya;

    move-object/from16 v41, v2

    goto :goto_1a

    :cond_34
    invoke-virtual {v5}, Ljws;->d()Z

    move-result v2

    if-eqz v2, :cond_35

    sget-object v2, Lgya;->r:Lgya;

    goto :goto_19

    :cond_35
    sget-object v2, Lgya;->j:Lgya;

    :goto_19
    move-object/from16 v41, v2

    :goto_1a
    if-eqz v41, :cond_4c

    iget-object v2, v1, Lfvx;->a:Ljava/lang/Object;

    invoke-interface {v2}, Lcqv;->e()Z

    move-result v2

    if-nez v2, :cond_36

    const/16 v43, 0x0

    goto :goto_1b

    :cond_36
    iget-object v2, v8, Lcpe;->b:Ldhi;

    sget-object v9, Ldgu;->J:Ldhj;

    invoke-interface {v2, v9}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v4}, Ljwu;->d()Z

    move-result v2

    if-eqz v2, :cond_37

    sget-object v2, Ljws;->d:Ljws;

    if-ne v5, v2, :cond_37

    const/16 v43, 0x0

    goto :goto_1b

    :cond_37
    const/16 v43, 0x1

    :goto_1b
    iget-object v2, v8, Lcpe;->b:Ldhi;

    sget-object v9, Ljws;->c:Ljws;

    if-ne v5, v9, :cond_39

    sget-object v11, Ljwu;->i:Ljwu;

    if-eq v4, v11, :cond_38

    sget-object v11, Ljwu;->j:Ljwu;

    if-ne v4, v11, :cond_39

    const/4 v11, 0x1

    goto :goto_1c

    :cond_38
    const/4 v11, 0x1

    goto :goto_1c

    :cond_39
    const/4 v11, 0x0

    :goto_1c
    sget-object v12, Ljws;->d:Ljws;

    if-ne v5, v12, :cond_3b

    sget-object v12, Ljwu;->i:Ljwu;

    if-eq v4, v12, :cond_3a

    sget-object v12, Ljwu;->j:Ljwu;

    if-ne v4, v12, :cond_3b

    const/4 v12, 0x1

    goto :goto_1d

    :cond_3a
    const/4 v12, 0x1

    goto :goto_1d

    :cond_3b
    const/4 v12, 0x0

    :goto_1d
    if-ne v5, v9, :cond_3c

    invoke-virtual {v4}, Ljwu;->d()Z

    move-result v9

    if-eqz v9, :cond_3c

    const/4 v9, 0x1

    goto :goto_1e

    :cond_3c
    const/4 v9, 0x0

    :goto_1e
    iget-object v14, v1, Lfvx;->a:Ljava/lang/Object;

    invoke-interface {v14}, Lcqv;->i()Z

    move-result v14

    if-eqz v14, :cond_3f

    if-nez v11, :cond_3e

    sget-object v11, Lklv;->a:Lklv;

    if-ne v7, v11, :cond_3d

    if-nez v9, :cond_3e

    :cond_3d
    if-eqz v12, :cond_3f

    invoke-interface {v2}, Ldhi;->c()V

    const/16 v44, 0x0

    goto :goto_1f

    :cond_3e
    const/16 v44, 0x1

    goto :goto_1f

    :cond_3f
    const/16 v44, 0x0

    :goto_1f
    iget-object v2, v1, Lfvx;->a:Ljava/lang/Object;

    invoke-interface {v2}, Lcqv;->g()Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, v8, Lcpe;->b:Ldhi;

    sget-object v9, Ldif;->a:Ldhj;

    invoke-interface {v2}, Ldhi;->e()V

    iget-object v2, v8, Lcpe;->l:Ligo;

    invoke-virtual {v2, v7, v4, v5}, Ligo;->o(Lklv;Ljwu;Ljws;)Z

    move-result v2

    if-eqz v2, :cond_40

    const/16 v45, 0x1

    goto :goto_20

    :cond_40
    const/16 v45, 0x0

    :goto_20
    invoke-virtual {v1}, Lfvx;->a()Lika;

    move-result-object v2

    sget-object v9, Lika;->c:Lika;

    invoke-virtual {v2, v9}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto :goto_21

    :cond_41
    iget-object v2, v8, Lcpe;->b:Ldhi;

    invoke-interface {v2}, Ldhi;->c()V

    sget-object v2, Ljws;->d:Ljws;

    invoke-virtual {v5, v2}, Ljws;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, v8, Lcpe;->b:Ldhi;

    sget-object v9, Ldgu;->ah:Ldhj;

    invoke-interface {v2, v9}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-nez v2, :cond_42

    iget-object v2, v8, Lcpe;->b:Ldhi;

    sget-object v9, Ldgu;->I:Ldhj;

    invoke-interface {v2, v9}, Ldhi;->l(Ldhj;)Z

    :cond_42
    invoke-virtual {v1}, Lfvx;->a()Lika;

    move-result-object v2

    sget-object v9, Lika;->c:Lika;

    invoke-virtual {v2, v9}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, v8, Lcpe;->b:Ldhi;

    invoke-interface {v2}, Ldhi;->c()V

    :cond_43
    invoke-virtual {v1}, Lfvx;->a()Lika;

    move-result-object v2

    sget-object v9, Lika;->c:Lika;

    invoke-virtual {v2, v9}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, v8, Lcpe;->b:Ldhi;

    sget-object v9, Ldho;->a:Ldhk;

    invoke-interface {v2}, Ldhi;->e()V

    :cond_44
    :goto_21
    invoke-virtual {v1}, Lfvx;->a()Lika;

    move-result-object v2

    sget-object v9, Lika;->c:Lika;

    invoke-virtual {v2, v9}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    sget-object v2, Ljws;->c:Ljws;

    invoke-virtual {v5, v2}, Ljws;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, v8, Lcpe;->b:Ldhi;

    invoke-interface {v2}, Ldhi;->c()V

    :cond_45
    invoke-virtual {v1}, Lfvx;->a()Lika;

    move-result-object v2

    sget-object v9, Lika;->t:Lika;

    invoke-virtual {v2, v9}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, v8, Lcpe;->b:Ldhi;

    sget-object v9, Ldgu;->aj:Ldhj;

    invoke-interface {v2, v9}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_46

    sget-object v2, Ljws;->b:Ljws;

    invoke-virtual {v5, v2}, Ljws;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    sget-object v2, Ljwu;->i:Ljwu;

    invoke-virtual {v4, v2}, Ljwu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    sget-object v2, Lklv;->b:Lklv;

    invoke-virtual {v7, v2}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    const/16 v46, 0x1

    goto :goto_22

    :cond_46
    const/16 v46, 0x0

    :goto_22
    iget-object v2, v8, Lcpe;->b:Ldhi;

    invoke-virtual {v1}, Lfvx;->a()Lika;

    sget-object v9, Ldho;->cc:Ldhj;

    invoke-interface {v2, v9}, Ldhi;->l(Ldhj;)Z

    move-result v9

    if-eqz v9, :cond_47

    invoke-interface {v2}, Ldhi;->e()V

    :cond_47
    invoke-virtual {v1}, Lfvx;->a()Lika;

    move-result-object v2

    sget-object v9, Lika;->c:Lika;

    invoke-virtual {v2, v9}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    sget-object v2, Ljws;->c:Ljws;

    invoke-virtual {v5, v2}, Ljws;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, v8, Lcpe;->b:Ldhi;

    invoke-interface {v2}, Ldhi;->c()V

    :cond_48
    invoke-virtual {v1}, Lfvx;->a()Lika;

    move-result-object v1

    sget-object v2, Lika;->c:Lika;

    invoke-virtual {v1, v2}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    sget-object v1, Ljws;->d:Ljws;

    invoke-virtual {v5, v1}, Ljws;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, v8, Lcpe;->b:Ldhi;

    invoke-interface {v1}, Ldhi;->f()V

    :cond_49
    iget-object v1, v8, Lcpe;->b:Ldhi;

    invoke-interface {v1}, Ldhi;->c()V

    new-instance v1, Lcrv;

    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object v2, v7

    move-object v15, v1

    move-object/from16 v18, v13

    move-object/from16 v19, v5

    move-object/from16 v20, v4

    move-object/from16 v23, v6

    move-object/from16 v40, v2

    invoke-direct/range {v15 .. v49}, Lcrv;-><init>(Lkll;Lkll;Ldne;Ljws;Ljwu;Lmqp;Lkaf;Ljxa;Lmqp;Lmqp;Lmqp;Lmqp;ZLandroid/util/Range;Landroid/util/Range;ZZZZZZLmvv;Lmvv;Lmvv;Lklv;Lgya;IZZZZZ[B[B)V

    iput-object v1, v8, Lcpe;->f:Lcsc;

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v10, v1

    :goto_23
    move-object/from16 v1, v52

    :try_start_3
    iget-object v2, v1, Lcor;->l:Lcvr;

    sget-object v4, Lcua;->b:Lcua;

    invoke-virtual {v2, v4}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v2

    iget-object v4, v1, Lcor;->f:Lcpx;

    invoke-virtual {v2, v4}, Ljuf;->d(Lkad;)V

    iget-object v2, v1, Lcor;->l:Lcvr;

    sget-object v4, Lcua;->b:Lcua;

    invoke-virtual {v2, v4}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljuf;->d(Lkad;)V

    iget-object v2, v1, Lcor;->j:Ldhi;

    sget-object v4, Ldgu;->a:Ldhk;

    invoke-interface {v2}, Ldhi;->c()V

    iget-object v2, v1, Lcor;->d:Lcqa;

    iput-object v10, v2, Lcqa;->z:Lcsc;

    iget-object v4, v2, Lcqa;->y:Lcyq;

    invoke-interface {v4, v10}, Lcyq;->j(Lcsc;)V

    iget-object v4, v2, Lcqa;->c:Lcyh;

    iget-object v5, v10, Lcsc;->F:Ldne;

    iget-object v5, v5, Ldne;->a:Ljava/lang/Object;

    check-cast v5, Lfuz;

    invoke-virtual {v4, v5}, Lcye;->a(Lfuz;)V

    iget-object v4, v2, Lcqa;->q:Ljuh;

    new-instance v5, Lcpz;

    invoke-direct {v5, v2, v10}, Lcpz;-><init>(Lcqa;Lcsc;)V

    invoke-virtual {v4, v5}, Ljuh;->c(Ljava/lang/Runnable;)V

    iget-object v2, v1, Lcor;->e:Lcpi;

    new-instance v11, Lcpk;

    move-object v4, v2

    check-cast v4, Lcpl;

    iget-object v4, v4, Lcpl;->a:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v54, v4

    check-cast v54, Ljuh;

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v2

    check-cast v4, Lcpl;

    iget-object v4, v4, Lcpl;->b:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v55, v4

    check-cast v55, Lgft;

    invoke-virtual/range {v55 .. v55}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v2

    check-cast v4, Lcpl;

    iget-object v4, v4, Lcpl;->c:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v56, v4

    check-cast v56, Liec;

    invoke-virtual/range {v56 .. v56}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v2

    check-cast v4, Lcpl;

    iget-object v4, v4, Lcpl;->d:Loiw;

    check-cast v4, Ldba;

    invoke-virtual {v4}, Ldba;->a()Ldfa;

    move-result-object v57

    move-object v4, v2

    check-cast v4, Lcpl;

    iget-object v4, v4, Lcpl;->e:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v58, v4

    check-cast v58, Lcqa;

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v2

    check-cast v4, Lcpl;

    iget-object v4, v4, Lcpl;->f:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v59, v4

    check-cast v59, Lcsd;

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v2

    check-cast v4, Lcpl;

    iget-object v4, v4, Lcpl;->g:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v60, v4

    check-cast v60, Lcvr;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v2

    check-cast v4, Lcpl;

    iget-object v4, v4, Lcpl;->h:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v61

    move-object v4, v2

    check-cast v4, Lcpl;

    iget-object v4, v4, Lcpl;->i:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v62, v4

    check-cast v62, Lcvr;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v2

    check-cast v4, Lcpl;

    iget-object v4, v4, Lcpl;->j:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v63, v4

    check-cast v63, Lcsa;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v2

    check-cast v4, Lcpl;

    iget-object v4, v4, Lcpl;->k:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v64, v4

    check-cast v64, Ldbf;

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v2

    check-cast v4, Lcpl;

    iget-object v4, v4, Lcpl;->l:Loiw;

    check-cast v4, Lcbo;

    invoke-virtual {v4}, Lcbo;->a()Lcbn;

    move-result-object v65

    move-object v4, v2

    check-cast v4, Lcpl;

    iget-object v4, v4, Lcpl;->m:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v66, v4

    check-cast v66, Lftu;

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v2

    check-cast v4, Lcpl;

    iget-object v4, v4, Lcpl;->n:Loiw;

    check-cast v4, Ldaz;

    invoke-virtual {v4}, Ldaz;->a()Ldja;

    move-result-object v67

    move-object v4, v2

    check-cast v4, Lcpl;

    iget-object v4, v4, Lcpl;->o:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v68, v4

    check-cast v68, Lhlu;

    invoke-virtual/range {v68 .. v68}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v2

    check-cast v4, Lcpl;

    iget-object v4, v4, Lcpl;->p:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v69, v4

    check-cast v69, Lcvx;

    invoke-virtual/range {v69 .. v69}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v2

    check-cast v4, Lcpl;

    iget-object v4, v4, Lcpl;->q:Loiw;

    check-cast v4, Lcvg;

    invoke-virtual {v4}, Lcvg;->a()Lcvf;

    move-result-object v70

    move-object v4, v2

    check-cast v4, Lcpl;

    iget-object v4, v4, Lcpl;->r:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v71, v4

    check-cast v71, Ldhi;

    invoke-virtual/range {v71 .. v71}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v2

    check-cast v4, Lcpl;

    iget-object v4, v4, Lcpl;->s:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Lcpl;

    iget-object v5, v5, Lcpl;->t:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v73, v5

    check-cast v73, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual/range {v73 .. v73}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v2

    check-cast v5, Lcpl;

    iget-object v5, v5, Lcpl;->u:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v74, v5

    check-cast v74, Lhkl;

    invoke-virtual/range {v74 .. v74}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v2

    check-cast v5, Lcpl;

    iget-object v5, v5, Lcpl;->v:Loiw;

    move-object v6, v2

    check-cast v6, Lcpl;

    iget-object v6, v6, Lcpl;->w:Loiw;

    check-cast v6, Logn;

    invoke-virtual {v6}, Logn;->a()Logd;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v2

    check-cast v6, Lcpl;

    iget-object v6, v6, Lcpl;->x:Loiw;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v77, v6

    check-cast v77, Ljew;

    invoke-virtual/range {v77 .. v77}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v2

    check-cast v6, Lcpl;

    iget-object v6, v6, Lcpl;->y:Loiw;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v78, v6

    check-cast v78, Lcqx;

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v2

    check-cast v6, Lcpl;

    iget-object v6, v6, Lcpl;->z:Loiw;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v79, v6

    check-cast v79, Lcsm;

    invoke-virtual/range {v79 .. v79}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lcpl;

    iget-object v2, v2, Lcpl;->A:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmqp;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v72, v4

    check-cast v72, Lcuf;

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    move-object/from16 v53, v11

    move-object/from16 v75, v5

    move-object/from16 v80, v10

    invoke-direct/range {v53 .. v83}, Lcpk;-><init>(Ljuh;Lgft;Liec;Ldfa;Lcqa;Lcsd;Lcvr;Lcps;Lcvr;Lcsa;Ldbf;Lcbn;Lftu;Ldja;Lhlu;Lcvx;Lcvf;Ldhi;Lcuf;Ljava/util/concurrent/ScheduledExecutorService;Lhkl;Loiw;Logd;Ljew;Lcqx;Lcsm;Lcsc;[B[B[B)V

    iget-object v2, v1, Lcor;->m:Ldne;

    iget-object v4, v10, Lcsc;->f:Lkaf;

    iget-object v5, v2, Ldne;->a:Ljava/lang/Object;

    check-cast v5, Ldja;

    invoke-virtual {v5, v10}, Ldja;->c(Lcsc;)Z

    move-result v5

    if-eqz v5, :cond_4a

    iget-object v5, v2, Ldne;->a:Ljava/lang/Object;

    check-cast v5, Ldja;

    invoke-virtual {v5}, Ldja;->d()V

    :cond_4a
    iget-object v5, v10, Lcsc;->x:Lklv;

    invoke-static {v4}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v6

    sget-object v7, Lmpx;->a:Lmpx;

    invoke-static {v5, v4, v6, v7}, Lihb;->b(Lklv;Lkaf;Ljzr;Lmqp;)Lihb;

    move-result-object v4

    iget-object v5, v10, Lcsc;->F:Ldne;

    iget-object v5, v5, Ldne;->a:Ljava/lang/Object;

    check-cast v5, Lklw;

    invoke-virtual {v5}, Lklw;->f()I

    move-result v5

    iget-object v2, v2, Ldne;->b:Ljava/lang/Object;

    sget-object v6, Lmpx;->a:Lmpx;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v2, Ligx;

    invoke-virtual {v2, v4, v6, v5}, Ligx;->f(Lihb;Lmqp;Ljava/lang/Integer;)Lnou;

    move-result-object v12

    new-instance v2, Lcop;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v10, v4}, Lcop;-><init>(Lcor;Lcsc;I)V

    iget-object v4, v1, Lcor;->a:Lnow;

    invoke-static {v2, v4}, Lnsy;->F(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v2

    new-instance v4, Lcpq;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v10, v5}, Lcpq;-><init>(Lcor;Lcsc;I)V

    iget-object v5, v1, Lcor;->a:Lnow;

    invoke-static {v2, v4, v5}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v13

    const/4 v2, 0x2

    new-array v4, v2, [Lnou;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const/4 v5, 0x1

    aput-object v13, v4, v5

    invoke-static {v4}, Lnsy;->v([Lnou;)Lnom;

    move-result-object v4

    new-instance v5, Lcoq;

    move-object v9, v5

    move-object v10, v1

    move-object/from16 v14, v51

    invoke-direct/range {v9 .. v14}, Lcoq;-><init>(Lcor;Lcpk;Lnou;Lnou;Lkbf;)V

    iget-object v6, v1, Lcor;->a:Lnow;

    invoke-virtual {v4, v5, v6}, Lnom;->b(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v4

    new-instance v5, Lcig;

    invoke-direct {v5, v1, v2}, Lcig;-><init>(Lcor;I)V

    iget-object v1, v1, Lcor;->b:Ljuh;

    invoke-static {v4, v5, v1}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v1, p0

    :try_start_4
    iget-object v2, v1, Lcox;->K:Ldja;

    invoke-virtual {v2}, Ldja;->i()I

    move-result v2

    iput v2, v1, Lcox;->s:I

    iput-object v4, v1, Lcox;->H:Lnou;

    const/4 v2, 0x3

    move/from16 v5, p1

    if-ne v5, v2, :cond_4b

    iget-object v5, v1, Lcox;->e:Litm;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Litm;->B(Z)V

    goto :goto_24

    :cond_4b
    move v2, v5

    :goto_24
    new-instance v5, Lcow;

    move-object/from16 v6, v50

    invoke-direct {v5, v1, v2, v6, v4}, Lcow;-><init>(Lcox;ILkbf;Lnou;)V

    iget-object v2, v1, Lcox;->C:Ljava/util/concurrent/Executor;

    invoke-static {v4, v5, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_26

    :cond_4c
    move-object/from16 v1, p0

    :try_start_5
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "Null captureSessionType"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4d
    move-object/from16 v1, p0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "Null supportedVideoResolutions"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4e
    move-object/from16 v1, p0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "Null supportedCaptureRates"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4f
    move-object/from16 v1, p0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "Null allSupportedCaptureRates"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_50
    move-object/from16 v1, p0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "Null cameraFacing"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_51
    move-object/from16 v1, p0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "Null recordFpsRange"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_52
    move-object/from16 v1, p0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "Null previewFpsRange"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_53
    move-object/from16 v1, p0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "Null camcorderCharacteristics"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_54
    move-object/from16 v1, p0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "Null videoResolution"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_55
    move-object/from16 v1, p0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "Null captureRate"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_25

    :catchall_2
    move-exception v0

    :goto_25
    move-object v2, v0

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v2

    :catchall_3
    move-exception v0

    :goto_26
    move-object v2, v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_28

    :goto_27
    throw v2

    :goto_28
    goto :goto_27
.end method


# virtual methods
.method public final a()Lcpk;
    .locals 2

    iget-object v0, p0, Lcox;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcox;->n:Lcpk;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Lcqs;)V
    .locals 1

    iget-object v0, p0, Lcox;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 21

    move-object/from16 v1, p0

    iget-object v2, v1, Lcox;->t:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcox;->H:Lnou;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnou;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v3}, Lnou;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, v1, Lcox;->H:Lnou;

    iget-object v4, v1, Lcox;->n:Lcpk;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcox;->g:Lhkj;

    sget-object v5, Lhki;->c:Lhki;

    invoke-virtual {v4, v5}, Lhkh;->h(Ljava/lang/Enum;)V

    iget-object v4, v1, Lcox;->r:Ldbb;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v1, Lcox;->g:Lhkj;

    sget-object v6, Lhki;->b:Lhki;

    sget-object v7, Lhki;->c:Lhki;

    invoke-virtual {v5, v6, v7}, Lhkj;->c(Lhki;Lhki;)I

    move-result v5

    invoke-virtual {v4, v5}, Ldbb;->f(I)V

    iget-object v5, v1, Lcox;->K:Ldja;

    invoke-virtual {v5}, Ldja;->j()I

    move-result v5

    invoke-virtual {v4, v5}, Ldbb;->e(I)V

    iget-object v5, v1, Lcox;->o:Lcrz;

    iget-object v5, v5, Lcrz;->r:Ljvs;

    invoke-interface {v5}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Ldbb;->a(Z)V

    iput-object v0, v1, Lcox;->n:Lcpk;

    :cond_1
    iget-object v4, v1, Lcox;->r:Ldbb;

    if-eqz v4, :cond_17

    iget-object v6, v1, Lcox;->J:Ldfa;

    iget-byte v7, v4, Ldbb;->g:B

    const/16 v8, 0xf

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-ne v7, v8, :cond_e

    iget-object v7, v4, Ldbb;->d:Lklv;

    if-eqz v7, :cond_e

    iget v8, v4, Ldbb;->h:I

    if-eqz v8, :cond_e

    iget v15, v4, Ldbb;->i:I

    if-eqz v15, :cond_e

    iget-object v14, v4, Ldbb;->e:Lika;

    if-nez v14, :cond_2

    goto/16 :goto_5

    :cond_2
    new-instance v13, Ldbc;

    iget v12, v4, Ldbb;->a:I

    iget v0, v4, Ldbb;->b:I

    iget v5, v4, Ldbb;->c:I

    iget-boolean v4, v4, Ldbb;->f:Z

    move/from16 v16, v12

    move-object v12, v13

    move-object v9, v13

    move/from16 v13, v16

    move-object/from16 v19, v14

    move v14, v0

    move v0, v15

    move v15, v5

    move-object/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v0

    move/from16 v20, v4

    invoke-direct/range {v12 .. v20}, Ldbc;-><init>(IIILklv;IILika;Z)V

    sget-object v0, Lnlh;->j:Lnlh;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget v4, v9, Ldbc;->a:I

    iget-object v5, v0, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object v5, v0, Lnwn;->b:Lnws;

    move-object v7, v5

    check-cast v7, Lnlh;

    iget v8, v7, Lnlh;->a:I

    or-int/2addr v8, v3

    iput v8, v7, Lnlh;->a:I

    iput v4, v7, Lnlh;->b:I

    iget v4, v9, Ldbc;->b:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object v5, v0, Lnwn;->b:Lnws;

    move-object v7, v5

    check-cast v7, Lnlh;

    iget v8, v7, Lnlh;->a:I

    or-int/2addr v8, v11

    iput v8, v7, Lnlh;->a:I

    iput v4, v7, Lnlh;->c:I

    iget v4, v9, Ldbc;->c:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object v5, v0, Lnwn;->b:Lnws;

    move-object v7, v5

    check-cast v7, Lnlh;

    iget v8, v7, Lnlh;->a:I

    or-int/2addr v8, v10

    iput v8, v7, Lnlh;->a:I

    iput v4, v7, Lnlh;->d:I

    iget-object v4, v9, Ldbc;->d:Lklv;

    sget-object v7, Lklv;->a:Lklv;

    if-ne v4, v7, :cond_6

    const/4 v4, 0x1

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_7
    iget-object v5, v0, Lnwn;->b:Lnws;

    check-cast v5, Lnlh;

    iget v7, v5, Lnlh;->a:I

    const/16 v8, 0x8

    or-int/2addr v7, v8

    iput v7, v5, Lnlh;->a:I

    iput-boolean v4, v5, Lnlh;->e:Z

    iget v4, v9, Ldbc;->g:I

    sget-object v5, Lcwx;->a:Lcwx;

    sget-object v5, Ljyk;->a:Ljyk;

    add-int/lit8 v5, v4, -0x1

    if-eqz v4, :cond_d

    const/4 v7, 0x3

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_4

    :pswitch_0
    const/4 v4, 0x3

    goto :goto_1

    :pswitch_1
    const/4 v4, 0x2

    goto :goto_1

    :pswitch_2
    const/4 v4, 0x1

    :goto_1
    iget-object v5, v0, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_8
    iget-object v5, v0, Lnwn;->b:Lnws;

    move-object v8, v5

    check-cast v8, Lnlh;

    add-int/lit8 v4, v4, -0x1

    iput v4, v8, Lnlh;->f:I

    iget v4, v8, Lnlh;->a:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v8, Lnlh;->a:I

    iget v4, v9, Ldbc;->h:I

    add-int/lit8 v8, v4, -0x1

    if-eqz v4, :cond_c

    packed-switch v8, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_3

    :pswitch_3
    const/16 v3, 0xb

    goto :goto_2

    :pswitch_4
    const/16 v3, 0xa

    goto :goto_2

    :pswitch_5
    const/16 v3, 0x9

    goto :goto_2

    :pswitch_6
    const/16 v3, 0x8

    goto :goto_2

    :pswitch_7
    const/4 v3, 0x7

    goto :goto_2

    :pswitch_8
    const/4 v3, 0x6

    goto :goto_2

    :pswitch_9
    const/4 v3, 0x5

    goto :goto_2

    :pswitch_a
    const/4 v3, 0x4

    goto :goto_2

    :pswitch_b
    const/4 v3, 0x3

    goto :goto_2

    :pswitch_c
    const/4 v3, 0x2

    goto :goto_2

    :goto_2
    :pswitch_d
    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_9
    iget-object v4, v0, Lnwn;->b:Lnws;

    check-cast v4, Lnlh;

    add-int/lit8 v3, v3, -0x1

    iput v3, v4, Lnlh;->g:I

    iget v3, v4, Lnlh;->a:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v4, Lnlh;->a:I

    iget-object v3, v9, Ldbc;->e:Lika;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ldfa;->d(Lika;Z)I

    move-result v3

    iget-object v4, v0, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_a
    iget-object v4, v0, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Lnlh;

    add-int/lit8 v3, v3, -0x1

    iput v3, v5, Lnlh;->h:I

    iget v3, v5, Lnlh;->a:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v5, Lnlh;->a:I

    iget-boolean v3, v9, Ldbc;->f:Z

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_b
    iget-object v4, v0, Lnwn;->b:Lnws;

    check-cast v4, Lnlh;

    iget v5, v4, Lnlh;->a:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v4, Lnlh;->a:I

    iput-boolean v3, v4, Lnlh;->i:Z

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnlh;

    iget-object v3, v6, Ldfa;->c:Ljava/lang/Object;

    invoke-interface {v3, v0}, Lfbz;->N(Lnlh;)V

    const/4 v0, 0x0

    iput-object v0, v1, Lcox;->r:Ldbb;

    goto/16 :goto_6

    :goto_3
    invoke-static {v4}, Ldiu;->e(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Not a valid session source: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x0

    throw v0

    :goto_4
    invoke-static {v4}, Ldiu;->d(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Not a valid session state: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/4 v0, 0x0

    throw v0

    :cond_e
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v5, v4, Ldbb;->g:B

    and-int/2addr v3, v5

    if-nez v3, :cond_f

    const-string v3, " creationLatencyMs"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    iget-byte v3, v4, Ldbb;->g:B

    and-int/2addr v3, v11

    if-nez v3, :cond_10

    const-string v3, " sessionDurationMs"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget-byte v3, v4, Ldbb;->g:B

    and-int/2addr v3, v10

    if-nez v3, :cond_11

    const-string v3, " numRecordedSessions"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    iget-object v3, v4, Ldbb;->d:Lklv;

    if-nez v3, :cond_12

    const-string v3, " cameraFacing"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    iget v3, v4, Ldbb;->h:I

    if-nez v3, :cond_13

    const-string v3, " sessionState"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    iget v3, v4, Ldbb;->i:I

    if-nez v3, :cond_14

    const-string v3, " sessionSource"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v3, v4, Ldbb;->e:Lika;

    if-nez v3, :cond_15

    const-string v3, " mode"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    iget-byte v3, v4, Ldbb;->g:B

    const/16 v4, 0x8

    and-int/2addr v3, v4

    if-nez v3, :cond_16

    const-string v3, " actionOnUserEdu"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Missing required properties:"

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_17
    :goto_6
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcox;->q:Z

    iget-object v0, v1, Lcox;->L:Lcvr;

    sget-object v3, Lcua;->b:Lcua;

    invoke-virtual {v0, v3}, Lcvr;->r(Lcua;)V

    iget-object v0, v1, Lcox;->L:Lcvr;

    sget-object v3, Lcua;->d:Lcua;

    invoke-virtual {v0, v3}, Lcvr;->r(Lcua;)V

    iget-object v0, v1, Lcox;->d:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcot;->a:Lcot;

    invoke-interface {v0, v3}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, v1, Lcox;->o:Lcrz;

    if-eqz v0, :cond_18

    sget-object v3, Lcrx;->d:Lcrx;

    invoke-virtual {v0, v3}, Lcrz;->a(Lcrx;)V

    :cond_18
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcox;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcox;->B:Lcsa;

    invoke-virtual {v1}, Lcsa;->a()Lcrz;

    move-result-object v1

    iput-object v1, p0, Lcox;->o:Lcrz;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lcox;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcox;->x:Lfvx;

    invoke-virtual {v1}, Lfvx;->a()Lika;

    move-result-object v1

    sget-object v2, Lika;->f:Lika;

    if-eq v1, v2, :cond_1

    sget-object v2, Lika;->t:Lika;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcox;->c:Ldbf;

    new-instance v2, Lclr;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3}, Lclr;-><init>(Lcox;I)V

    invoke-virtual {v1, v2}, Ldbf;->h(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    sget-object v2, Lcox;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v3, 0x195

    invoke-interface {v2, v3}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const-string v3, "Camera switch not supported for %s"

    invoke-interface {v2, v3, v1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f(I)V
    .locals 4

    iget-object v0, p0, Lcox;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcox;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcox;->n:Lcpk;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcpk;->e:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    :try_start_1
    iput-boolean v2, v1, Lcpk;->v:Z

    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcox;->o:Lcrz;

    iget-object v1, v1, Lcrz;->f:Ljwb;

    if-nez p1, :cond_2

    move-object p1, v1

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final g(Z)V
    .locals 3

    iget-object v0, p0, Lcox;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcox;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcox;->n:Lcpk;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcpk;->i(Z)V

    iget-boolean p1, p0, Lcox;->q:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcox;->p:Z

    if-eqz p1, :cond_3

    :cond_0
    iget-object p1, p0, Lcox;->f:Liff;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Liff;->z(Z)V

    iput-boolean v1, p0, Lcox;->q:Z

    iput-boolean v1, p0, Lcox;->p:Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcox;->o:Lcrz;

    iget-object p1, p1, Lcrz;->g:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    sget-object v1, Lcrx;->b:Lcrx;

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcox;->q:Z

    goto :goto_0

    :cond_2
    sget-object p1, Lcox;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0x198

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v1, "onShutterButtonClicked ignored with state: %s"

    iget-object v2, p0, Lcox;->o:Lcrz;

    iget-object v2, v2, Lcrz;->g:Ljwb;

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final h()V
    .locals 10

    iget-object v0, p0, Lcox;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcox;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcox;->n:Lcpk;

    if-eqz v1, :cond_3

    invoke-static {}, Ljuh;->a()V

    iget-object v2, v1, Lcpk;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, v1, Lcpk;->x:Lcpu;

    if-eqz v1, :cond_2

    invoke-static {}, Ljuh;->a()V

    iget-object v3, v1, Lcpu;->f:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, v1, Lcpu;->F:Lcpt;

    sget-object v5, Lcpt;->c:Lcpt;

    if-eq v4, v5, :cond_0

    iget-object v4, v1, Lcpu;->F:Lcpt;

    sget-object v5, Lcpt;->d:Lcpt;

    if-eq v4, v5, :cond_0

    sget-object v5, Lcpt;->b:Lcpt;

    if-ne v4, v5, :cond_1

    :cond_0
    iget-object v4, v1, Lcpu;->d:Lcqa;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcqa;->l(Z)V

    invoke-static {}, Lgxy;->a()Lgxy;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v7, Lgya;->p:Lgya;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Ldlg;->a(Lgya;J)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lgya;->p:Lgya;

    invoke-static {v4, v5, v6, v7, v8}, Lgxz;->a(Lgxy;JLjava/lang/String;Lgya;)Lgxz;

    move-result-object v4

    iget-object v5, v1, Lcpu;->y:Ldlj;

    invoke-interface {v5, v4}, Ldlj;->j(Lgxz;)V

    iget-object v5, v1, Lcpu;->C:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcpu;->p:Lcwj;

    invoke-interface {v5, v4}, Lcwj;->a(Lgxz;)Lnou;

    move-result-object v5

    iget-object v6, v1, Lcpu;->d:Lcqa;

    iget-object v6, v6, Lcqa;->w:Lcha;

    invoke-interface {v6}, Lcha;->k()V

    new-instance v6, Lcoi;

    const/4 v7, 0x4

    invoke-direct {v6, v1, v4, v7}, Lcoi;-><init>(Lcpu;Lgxz;I)V

    iget-object v1, v1, Lcpu;->c:Ljuh;

    invoke-static {v5, v6, v1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    :cond_2
    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    :cond_3
    sget-object v1, Lcox;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x19b

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "onSnapshotButtonClicked ignored with state: %s"

    iget-object v3, p0, Lcox;->o:Lcrz;

    iget-object v3, v3, Lcrz;->g:Ljwb;

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Lcox;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcox;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcox;->n:Lcpk;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcpk;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, v1, Lcpk;->v:Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_0
    sget-object v1, Lcox;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x19d

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "onThumbnailButtonClicked ignored with state: %s"

    iget-object v3, p0, Lcox;->o:Lcrz;

    iget-object v3, v3, Lcrz;->g:Ljwb;

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final j(Z)V
    .locals 3

    iget-object v0, p0, Lcox;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcox;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcox;->n:Lcpk;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcpk;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :try_start_1
    iput-boolean p1, v1, Lcpk;->v:Z

    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_1
    sget-object p1, Lcox;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0x19f

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v1, "onWindowFocusChanged ignored with state: %s"

    iget-object v2, p0, Lcox;->o:Lcrz;

    iget-object v2, v2, Lcrz;->g:Ljwb;

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final k(Lcqs;)V
    .locals 1

    iget-object v0, p0, Lcox;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final l(Z)V
    .locals 7

    iget-object v0, p0, Lcox;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcox;->o:Lcrz;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcox;->d()V

    :cond_0
    iget-object v1, p0, Lcox;->o:Lcrz;

    iget-object v1, v1, Lcrz;->g:Ljwb;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Lcrx;

    sget-object v2, Lcrx;->b:Lcrx;

    if-eq v1, v2, :cond_5

    sget-object v2, Lcrx;->c:Lcrx;

    if-eq v1, v2, :cond_5

    sget-object v2, Lcrx;->e:Lcrx;

    if-ne v1, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcox;->D:Loiw;

    check-cast v1, Lcus;

    invoke-virtual {v1}, Lcus;->a()Lcur;

    move-result-object v1

    iput-object v1, p0, Lcox;->I:Lcur;

    iget-object v2, v1, Lcur;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-boolean v3, v1, Lcur;->e:Z

    if-eqz v3, :cond_2

    monitor-exit v2

    goto :goto_0

    :cond_2
    iget-boolean v3, v1, Lcur;->f:Z

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcur;->a()V

    :cond_3
    invoke-virtual {v1}, Lcur;->b()V

    iget-object v3, v1, Lcur;->a:Landroid/media/AudioManager;

    iget-object v4, v1, Lcur;->b:Landroid/media/AudioDeviceCallback;

    iget-object v5, v1, Lcur;->c:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcur;->f:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcox;->L:Lcvr;

    sget-object v2, Lcua;->a:Lcua;

    invoke-virtual {v1, v2}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v1

    iget-object v2, p0, Lcox;->I:Lcur;

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lcox;->L:Lcvr;

    sget-object v2, Lcua;->a:Lcua;

    invoke-virtual {v1, v2}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v1

    iget-object v2, p0, Lcox;->l:Leoa;

    iget-object v3, p0, Lcox;->m:Lenz;

    invoke-virtual {v2, v3}, Leoa;->a(Lenz;)V

    new-instance v2, Lcfh;

    const/16 v3, 0xa

    invoke-direct {v2, p0, v3}, Lcfh;-><init>(Lcox;I)V

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lcox;->L:Lcvr;

    sget-object v2, Lcua;->a:Lcua;

    invoke-virtual {v1, v2}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v1

    iget-object v2, p0, Lcox;->f:Liff;

    iget-object v3, p0, Lcox;->k:Lifj;

    invoke-interface {v2, v3}, Liff;->e(Lifj;)Lkad;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Lcox;->E:Loiw;

    check-cast v1, Lcup;

    invoke-virtual {v1}, Lcup;->a()Lcuo;

    move-result-object v1

    iput-object v1, p0, Lcox;->u:Lcuo;

    iget-object v2, v1, Lcuo;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v3, v1, Lcuo;->d:Ljuf;

    iget-object v4, v1, Lcuo;->f:Lgyd;

    iget-object v4, v4, Lgyd;->a:Ljwb;

    sget-object v5, Lcfv;->s:Lcfv;

    invoke-static {v4, v5}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v4

    new-instance v5, Lckj;

    const/16 v6, 0x12

    invoke-direct {v5, v1, v6}, Lckj;-><init>(Lcuo;I)V

    sget-object v6, Lnnv;->a:Lnnv;

    invoke-interface {v4, v5, v6}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljuf;->d(Lkad;)V

    iget-object v3, v1, Lcuo;->d:Ljuf;

    iget-object v4, v1, Lcuo;->f:Lgyd;

    iget-object v4, v4, Lgyd;->c:Ljwb;

    new-instance v5, Lckj;

    const/16 v6, 0x13

    invoke-direct {v5, v1, v6}, Lckj;-><init>(Lcuo;I)V

    sget-object v6, Lnnv;->a:Lnnv;

    invoke-interface {v4, v5, v6}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljuf;->d(Lkad;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, v1, Lcuo;->b:Landroid/app/Activity;

    iget-object v1, v1, Lcuo;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v1, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lcox;->L:Lcvr;

    sget-object v2, Lcua;->a:Lcua;

    invoke-virtual {v1, v2}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v1

    iget-object v2, p0, Lcox;->u:Lcuo;

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcox;->s(I)V

    :cond_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1

    :cond_5
    :goto_1
    sget-object p1, Lcox;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0x1a1

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v1, "Capture session already started. Ignoring..."

    invoke-interface {p1, v1}, Lnah;->o(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1
.end method

.method public final m()V
    .locals 4

    iget-object v0, p0, Lcox;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcox;->c()V

    iget-object v1, p0, Lcox;->I:Lcur;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcur;->a()V

    :cond_0
    iget-object v1, p0, Lcox;->L:Lcvr;

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v1, Lcvr;->a:Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcua;

    invoke-virtual {v1, v3}, Lcvr;->r(Lcua;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcox;->o:Lcrz;

    if-eqz v1, :cond_2

    sget-object v2, Lcrx;->a:Lcrx;

    invoke-virtual {v1, v2}, Lcrz;->a(Lcrx;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final n()Z
    .locals 5

    iget-object v0, p0, Lcox;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcox;->o:Lcrz;

    iget-object v1, v1, Lcrz;->g:Ljwb;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    sget-object v2, Lcrx;->e:Lcrx;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v4}, Lcox;->g(Z)V

    monitor-exit v0

    return v3

    :cond_0
    iget-object v1, p0, Lcox;->x:Lfvx;

    invoke-virtual {v1}, Lfvx;->a()Lika;

    move-result-object v1

    sget-object v2, Lika;->f:Lika;

    invoke-virtual {v1, v2}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcox;->G:Lczx;

    invoke-interface {v1}, Lczx;->e()V

    monitor-exit v0

    return v3

    :cond_1
    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final o()Z
    .locals 10

    iget-object v0, p0, Lcox;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcox;->r()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcox;->n:Lcpk;

    if-eqz v1, :cond_3

    invoke-static {}, Ljuh;->a()V

    iget-object v3, v1, Lcpk;->e:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v1, v1, Lcpk;->x:Lcpu;

    if-eqz v1, :cond_2

    iget-object v4, v1, Lcpu;->f:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v5, v1, Lcpu;->F:Lcpt;

    sget-object v6, Lcpt;->c:Lcpt;

    if-eq v5, v6, :cond_0

    sget-object v5, Lcpu;->a:Lnak;

    invoke-virtual {v5}, Lnaf;->c()Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    const/16 v6, 0x1e0

    invoke-interface {v5, v6}, Lnah;->G(I)Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    const-string v6, "Pause button ignored with state: %s"

    iget-object v1, v1, Lcpu;->F:Lcpt;

    invoke-interface {v5, v6, v1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v4

    goto :goto_0

    :cond_0
    iget-object v5, v1, Lcpu;->A:Lkbc;

    const-string v6, "onPauseButtonClicked"

    invoke-interface {v5, v6}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v5, v1, Lcpu;->G:Lcui;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Lcui;->a:Ljyc;

    invoke-interface {v5}, Ljyc;->g()Lnou;

    iget-object v5, v1, Lcpu;->q:Lctu;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v8, v5, Lctu;->b:Ljava/util/Deque;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Lmym;->c(Ljava/lang/Comparable;)Lmym;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v5, v1, Lcpu;->g:Lcty;

    invoke-virtual {v5}, Lcty;->c()V

    iget-object v5, v1, Lcpu;->J:Lcvr;

    iget-object v5, v5, Lcvr;->a:Ljava/lang/Object;

    const v6, 0x7f13002e

    invoke-interface {v5, v6}, Lhgy;->b(I)V

    iget-object v5, v1, Lcpu;->L:Lcvr;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcvr;->t(I)V

    sget-object v5, Lcpt;->d:Lcpt;

    invoke-virtual {v1, v5}, Lcpu;->j(Lcpt;)V

    iget-object v5, v1, Lcpu;->l:Lcsc;

    iget-boolean v5, v5, Lcsc;->B:Z

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcpu;->w:Lczf;

    invoke-virtual {v5, v2}, Lczf;->c(Z)V

    :cond_1
    iget-object v1, v1, Lcpu;->A:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v2, 0x1

    :goto_0
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1

    :cond_2
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_1
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    return v2

    :catchall_2
    move-exception v1

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v1

    :cond_3
    sget-object v1, Lcox;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v3, 0x1a5

    invoke-interface {v1, v3}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v3, "onPauseButtonClicked ignored with state: %s"

    iget-object v4, p0, Lcox;->o:Lcrz;

    iget-object v4, v4, Lcrz;->g:Ljwb;

    check-cast v4, Ljvk;

    iget-object v4, v4, Ljvk;->d:Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return v2

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v1
.end method

.method public final p()Z
    .locals 9

    iget-object v0, p0, Lcox;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcox;->r()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcox;->n:Lcpk;

    if-eqz v1, :cond_2

    invoke-static {}, Ljuh;->a()V

    iget-object v3, v1, Lcpk;->e:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, v1, Lcpk;->x:Lcpu;

    if-eqz v1, :cond_1

    iget-object v4, v1, Lcpu;->f:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, v1, Lcpu;->F:Lcpt;

    sget-object v6, Lcpt;->d:Lcpt;

    if-eq v5, v6, :cond_0

    sget-object v5, Lcpu;->a:Lnak;

    invoke-virtual {v5}, Lnaf;->c()Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    const/16 v6, 0x1e1

    invoke-interface {v5, v6}, Lnah;->G(I)Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    const-string v6, "Resume button ignored with state: %s"

    iget-object v1, v1, Lcpu;->F:Lcpt;

    invoke-interface {v5, v6, v1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v4

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcpu;->A:Lkbc;

    const-string v5, "onResumeButtonClicked"

    invoke-interface {v2, v5}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v2, v1, Lcpu;->J:Lcvr;

    iget-object v2, v2, Lcvr;->a:Ljava/lang/Object;

    const v5, 0x7f13002f

    invoke-interface {v2, v5}, Lhgy;->b(I)V

    iget-object v2, v1, Lcpu;->L:Lcvr;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcvr;->t(I)V

    sget-object v2, Lcpt;->b:Lcpt;

    invoke-virtual {v1, v2}, Lcpu;->j(Lcpt;)V

    iget-object v2, v1, Lcpu;->r:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lclr;

    const/16 v6, 0x10

    invoke-direct {v5, v1, v6}, Lclr;-><init>(Lcpu;I)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x190

    invoke-interface {v2, v5, v7, v8, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v1, v1, Lcpu;->A:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    :cond_1
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return v2

    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1

    :cond_2
    sget-object v1, Lcox;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v3, 0x1a7

    invoke-interface {v1, v3}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v3, "onResumeButtonClicked ignored with state: %s"

    iget-object v4, p0, Lcox;->o:Lcrz;

    iget-object v4, v4, Lcrz;->g:Ljwb;

    check-cast v4, Ljvk;

    iget-object v4, v4, Ljvk;->d:Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return v2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method

.method public final q(I)V
    .locals 1

    iget-object v0, p0, Lcox;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcox;->c()V

    invoke-direct {p0, p1}, Lcox;->s(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
