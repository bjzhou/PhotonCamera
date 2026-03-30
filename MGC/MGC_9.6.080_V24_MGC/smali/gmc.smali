.class public Lgmc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lglz;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final A:Lfdo;

.field private final B:Lglx;

.field private final C:Lgqf;

.field private final D:Ljava/util/concurrent/Executor;

.field private final E:Ltxm;

.field private final F:Ltxm;

.field private final G:Lpdf;

.field private H:Lsui;

.field private I:Lmyr;

.field private J:Lgtr;

.field private final K:Lgvg;

.field private final L:Lhdu;

.field private final M:Lrbh;

.field public final b:Lgqi;

.field public final c:Lowu;

.field public final d:Lhco;

.field public final e:Lnxc;

.field public final f:Lngo;

.field public final g:Lmkr;

.field public final h:Lhtr;

.field final i:Lngu;

.field public final j:Ljdc;

.field public final k:Ljdb;

.field public l:Lgmy;

.field public m:Lgqc;

.field public n:Z

.field public o:Z

.field public p:Lhch;

.field public q:I

.field public final r:Ljava/util/List;

.field public final s:Ljava/lang/Object;

.field public t:Lgto;

.field public final u:Lhoh;

.field public final v:Lhif;

.field public final w:Lhdn;

.field public final x:Lobe;

.field public final y:Lgvg;

.field public final z:Lfdn;


# direct methods
.method private final 430f03c2ea70bd28108d593eca0c7c30m(Lhci;)V
    .locals 48

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    move-object/from16 v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    const v1, 0x18

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

    nop

    :goto_8
    iget-object v7, v0, Lgmc;->s:Ljava/lang/Object;

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

    :goto_9
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    :goto_a
    move-object/from16 v0, p0

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

    nop

    :goto_b
    throw v0

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    monitor-enter v7

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lhci;->name()Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lgmc;->e94656b6137dd01f26085f984afe853em()V

    iget-object v1, v0, Lgmc;->m:Lgqc;

    nop

    nop

    iget-object v1, v1, Lgqc;->g:Loyn;

    nop

    check-cast v1, Loxv;

    nop

    nop

    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    check-cast v1, Lgqa;

    nop

    sget-object v2, Lgqa;->b:Lgqa;

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_6

    nop

    nop

    sget-object v4, Lgqa;->c:Lgqa;

    nop

    nop

    if-eq v1, v4, :cond_6

    nop

    nop

    sget-object v4, Lgqa;->e:Lgqa;

    nop

    nop

    nop

    nop

    nop

    if-ne v1, v4, :cond_1

    nop

    nop

    goto/16 :goto_f

    nop

    nop

    :cond_1
    iget-object v1, v0, Lgmc;->m:Lgqc;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lgqc;->a(Lgqa;)V

    new-instance v1, Lhch;

    nop

    invoke-direct {v1}, Lhch;-><init>()V

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lhch;->c(I)V

    invoke-virtual {v1, v2}, Lhch;->g(I)V

    invoke-virtual {v1, v2}, Lhch;->e(I)V

    sget-object v4, Lpog;->b:Lpog;

    nop

    invoke-virtual {v1, v4}, Lhch;->b(Lpog;)V

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    iput v4, v1, Lhch;->i:I

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Lhci;->a:Lhci;

    nop

    invoke-virtual {v1, v5}, Lhch;->f(Lhci;)V

    sget-object v5, Lnne;->a:Lnne;

    nop

    nop

    nop

    invoke-virtual {v1, v5}, Lhch;->d(Lnne;)V

    invoke-virtual {v1, v2}, Lhch;->a(Z)V

    invoke-virtual {v1, v3}, Lhch;->f(Lhci;)V

    iget-object v5, v0, Lgmc;->d:Lhco;

    nop

    nop

    invoke-virtual {v5}, Lhco;->a()Lpog;

    move-result-object v5

    nop

    nop

    invoke-virtual {v1, v5}, Lhch;->b(Lpog;)V

    iget-object v5, v0, Lgmc;->b:Lgqi;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lgqi;->a()Lnne;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v5}, Lhch;->d(Lnne;)V

    iput-object v1, v0, Lgmc;->p:Lhch;

    nop

    nop

    iget-object v1, v0, Lgmc;->G:Lpdf;

    nop

    nop

    nop

    const-string v5, "CamcorderControllers#createCaptureSession"

    nop

    invoke-interface {v1, v5}, Lpdf;->a(Ljava/lang/String;)Lpdh;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v0, Lgmc;->g:Lmkr;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lmkr;->a()V

    iget-object v1, v0, Lgmc;->g:Lmkr;

    nop

    nop

    nop

    sget-object v6, Lmkq;->a:Lmkq;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v6}, Lmkp;->h(Ljava/lang/Enum;)V

    iget-object v1, v0, Lgmc;->r:Ljava/util/List;

    nop

    nop

    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    nop

    new-instance v6, Lgfl;

    nop

    nop

    nop

    const/4 v8, 0x2

    nop

    nop

    nop

    nop

    invoke-direct {v6, v8}, Lgfl;-><init>(I)V

    invoke-interface {v1, v6}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lgmc;->B:Lglx;

    nop

    nop

    nop

    invoke-static {}, Lowu;->a()V

    iget-object v6, v1, Lglx;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v9, "CamcorderCaptureSessionFactory#createNewSession"

    nop

    invoke-interface {v6, v9}, Lpdf;->a(Ljava/lang/String;)Lpdh;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v1, Lglx;->i:Lgmq;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lgmq;->a()Lgqg;

    move-result-object v6

    nop

    nop

    iget-object v9, v1, Lglx;->l:Lgvg;

    nop

    nop

    sget-object v10, Lgst;->b:Lgst;

    nop

    invoke-virtual {v9, v10}, Lgvg;->k(Lgst;)Lows;

    move-result-object v9

    nop

    nop

    nop

    iget-object v10, v1, Lglx;->f:Lgnl;

    nop

    invoke-virtual {v9, v10}, Lows;->d(Lpci;)V

    iget-object v9, v1, Lglx;->l:Lgvg;

    nop

    nop

    nop

    nop

    nop

    sget-object v10, Lgst;->b:Lgst;

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v10}, Lgvg;->k(Lgst;)Lows;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {v9, v1}, Lows;->d(Lpci;)V

    iget-object v9, v1, Lglx;->k:Lhoh;

    nop

    sget-object v9, Lhly;->a:Lhmo;

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v1, Lglx;->d:Lgnn;

    nop

    nop

    nop

    iput-object v6, v9, Lgnn;->x:Lgqg;

    nop

    iget-object v10, v9, Lgnn;->w:Lgyw;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v10, v6}, Lgyw;->l(Lgqg;)V

    iget-object v10, v9, Lgnn;->c:Lgyj;

    nop

    nop

    iget-object v11, v6, Lgqg;->W:Liof;

    nop

    iget-object v11, v11, Liof;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v11, Lkog;

    nop

    nop

    invoke-virtual {v10, v11}, Lgyg;->c(Lkog;)V

    iget-object v10, v9, Lgnn;->o:Lowu;

    nop

    nop

    nop

    new-instance v11, Lgnm;

    nop

    invoke-direct {v11, v9, v6}, Lgnm;-><init>(Lgnn;Lgqg;)V

    invoke-virtual {v10, v11}, Lowu;->c(Ljava/lang/Runnable;)V

    iget-object v9, v1, Lglx;->j:Lgmz;

    nop

    nop

    iget-object v10, v9, Lgmz;->a:Ltxm;

    nop

    nop

    nop

    new-instance v11, Lgmy;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v10}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    move-object/from16 v17, v10

    nop

    check-cast v17, Lowu;

    nop

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v9, Lgmz;->b:Ltxm;

    nop

    nop

    nop

    nop

    invoke-interface {v10}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    move-object/from16 v18, v10

    nop

    nop

    nop

    nop

    check-cast v18, Llad;

    nop

    nop

    nop

    nop

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v9, Lgmz;->c:Ltxm;

    nop

    nop

    nop

    invoke-interface {v10}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    move-object/from16 v19, v10

    nop

    nop

    nop

    nop

    nop

    check-cast v19, Lnft;

    nop

    nop

    nop

    nop

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v9, Lgmz;->d:Ltxm;

    nop

    nop

    nop

    nop

    check-cast v10, Lhcg;

    nop

    nop

    invoke-virtual {v10}, Lhcg;->b()Lrbh;

    move-result-object v20

    nop

    nop

    nop

    nop

    iget-object v10, v9, Lgmz;->e:Ltxm;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v10}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v10

    nop

    move-object/from16 v21, v10

    nop

    nop

    check-cast v21, Lgnn;

    nop

    nop

    nop

    nop

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v9, Lgmz;->f:Ltxm;

    nop

    nop

    nop

    nop

    invoke-interface {v10}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    move-object/from16 v22, v10

    nop

    nop

    nop

    nop

    check-cast v22, Lgqh;

    nop

    nop

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v9, Lgmz;->g:Ltxm;

    nop

    nop

    nop

    invoke-interface {v10}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    move-object/from16 v23, v10

    nop

    check-cast v23, Lgvg;

    nop

    nop

    nop

    nop

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v9, Lgmz;->h:Ltxm;

    nop

    nop

    invoke-interface {v10}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    iget-object v12, v9, Lgmz;->i:Ltxm;

    nop

    invoke-interface {v12}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v12

    nop

    move-object/from16 v25, v12

    nop

    nop

    nop

    nop

    nop

    check-cast v25, Lgvg;

    nop

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v9, Lgmz;->j:Ltxm;

    nop

    invoke-interface {v12}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    move-object/from16 v26, v12

    nop

    nop

    check-cast v26, Lgqf;

    nop

    nop

    nop

    nop

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v9, Lgmz;->k:Ltxm;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v12}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    move-object/from16 v27, v12

    nop

    check-cast v27, Lhco;

    nop

    nop

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v9, Lgmz;->l:Ltxm;

    nop

    nop

    check-cast v12, Lfuv;

    nop

    nop

    invoke-virtual {v12}, Lfuv;->b()Lgnj;

    move-result-object v28

    nop

    nop

    nop

    nop

    nop

    iget-object v12, v9, Lgmz;->m:Ltxm;

    nop

    nop

    nop

    invoke-interface {v12}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v12

    nop

    move-object/from16 v29, v12

    nop

    check-cast v29, Lknb;

    nop

    nop

    nop

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v9, Lgmz;->n:Ltxm;

    nop

    invoke-interface {v12}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v12

    nop

    move-object/from16 v30, v12

    nop

    nop

    nop

    nop

    nop

    check-cast v30, Lmlw;

    nop

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v9, Lgmz;->o:Ltxm;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v12}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    move-object/from16 v31, v12

    nop

    check-cast v31, Lgvo;

    nop

    nop

    nop

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v9, Lgmz;->p:Ltxm;

    nop

    nop

    nop

    nop

    nop

    check-cast v12, Lguq;

    nop

    invoke-virtual {v12}, Lguq;->b()Lgup;

    move-result-object v32

    nop

    nop

    nop

    nop

    iget-object v12, v9, Lgmz;->q:Ltxm;

    nop

    nop

    invoke-interface {v12}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v12

    nop

    check-cast v12, Lhoh;

    nop

    nop

    nop

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v9, Lgmz;->r:Ltxm;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v12}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    iget-object v13, v9, Lgmz;->s:Ltxm;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v13}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    nop

    move-object/from16 v34, v13

    nop

    check-cast v34, Lmkt;

    nop

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v9, Lgmz;->u:Ltxm;

    nop

    nop

    nop

    nop

    invoke-interface {v13}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v36

    nop

    nop

    iget-object v13, v9, Lgmz;->t:Ltxm;

    nop

    nop

    nop

    iget-object v14, v9, Lgmz;->v:Ltxm;

    nop

    nop

    nop

    invoke-interface {v14}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v37, v14

    nop

    nop

    nop

    nop

    check-cast v37, Lpic;

    nop

    nop

    nop

    nop

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v9, Lgmz;->w:Ltxm;

    nop

    invoke-interface {v14}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v14

    nop

    move-object/from16 v38, v14

    nop

    nop

    nop

    nop

    check-cast v38, Lgoi;

    nop

    nop

    nop

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v9, Lgmz;->x:Ltxm;

    nop

    nop

    invoke-interface {v14}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    nop

    move-object/from16 v39, v14

    nop

    nop

    nop

    nop

    nop

    check-cast v39, Lgqr;

    nop

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v9, Lgmz;->y:Ltxm;

    nop

    nop

    nop

    nop

    invoke-interface {v14}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    move-object/from16 v40, v14

    nop

    nop

    nop

    nop

    check-cast v40, Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v9, Lgmz;->z:Ltxm;

    nop

    nop

    nop

    nop

    nop

    check-cast v14, Liez;

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Liez;->b()Loyn;

    move-result-object v41

    nop

    iget-object v14, v9, Lgmz;->A:Ltxm;

    nop

    invoke-interface {v14}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v14

    nop

    move-object/from16 v42, v14

    nop

    nop

    nop

    nop

    check-cast v42, Lmly;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v9, Lgmz;->B:Ltxm;

    nop

    nop

    nop

    invoke-interface {v14}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v43, v14

    nop

    nop

    check-cast v43, Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v9, Lgmz;->D:Ltxm;

    nop

    nop

    nop

    invoke-interface {v14}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v44, v14

    nop

    nop

    nop

    nop

    check-cast v44, Lmhz;

    nop

    nop

    nop

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v9, Lgmz;->E:Ltxm;

    nop

    check-cast v14, Ltuo;

    nop

    iget-object v14, v14, Ltuo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    move-object/from16 v45, v14

    nop

    nop

    check-cast v45, Lfdo;

    nop

    nop

    nop

    nop

    iget-object v9, v9, Lgmz;->F:Ltxm;

    nop

    invoke-interface {v9}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v9

    nop

    move-object/from16 v46, v9

    nop

    nop

    check-cast v46, Lpdf;

    nop

    nop

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v33, v12

    nop

    nop

    nop

    nop

    nop

    check-cast v33, Lgsw;

    nop

    nop

    move-object/from16 v24, v10

    nop

    nop

    nop

    check-cast v24, Lgnj;

    nop

    nop

    nop

    move-object/from16 v16, v11

    nop

    nop

    nop

    nop

    move-object/from16 v35, v13

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v47, v6

    nop

    nop

    nop

    invoke-direct/range {v16 .. v47}, Lgmy;-><init>(Lowu;Llad;Lnft;Lrbh;Lgnn;Lgqh;Lgvg;Lgnj;Lgvg;Lgqf;Lhco;Lgnj;Lknb;Lmlw;Lgvo;Lgup;Lgsw;Lmkt;Ltxm;Ltud;Lpic;Lgoi;Lgqr;Lrss;Loyn;Lmly;Ljava/util/concurrent/Executor;Lmhz;Lfdo;Lpdf;Lgqg;)V

    iget-object v9, v1, Lglx;->m:Liof;

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v6}, Liof;->u(Lgqg;)Lsui;

    move-result-object v12

    nop

    nop

    nop

    new-instance v13, Lsuu;

    nop

    nop

    nop

    invoke-direct {v13}, Lsuu;-><init>()V

    new-instance v14, Lsuu;

    nop

    invoke-direct {v14}, Lsuu;-><init>()V

    iget-boolean v9, v6, Lgqg;->L:Z

    nop

    nop

    if-eqz v9, :cond_2

    nop

    nop

    nop

    invoke-virtual {v1, v6, v13, v14, v4}, Lglx;->a(Lgqg;Lsuu;Lsuu;Z)V

    goto :goto_e

    nop

    nop

    nop

    :cond_2
    iget-object v9, v1, Lglx;->g:Lgze;

    nop

    nop

    nop

    nop

    iget-object v10, v6, Lgqg;->d:Lozg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Lozg;->b()Lpck;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v10}, Lgze;->a(Lpck;)Lrss;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lrss;->h()Z

    move-result v10

    nop

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    check-cast v6, Landroid/view/Surface;

    nop

    nop

    invoke-virtual {v13, v6}, Lsuu;->e(Ljava/lang/Object;)Z

    sget-object v6, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v6}, Lsuu;->e(Ljava/lang/Object;)Z

    goto :goto_e

    nop

    :cond_3
    invoke-virtual {v1, v6, v13, v14, v2}, Lglx;->a(Lgqg;Lsuu;Lsuu;Z)V

    :goto_e
    const/4 v6, 0x3

    nop

    new-array v9, v6, [Lsui;

    nop

    nop

    nop

    nop

    aput-object v12, v9, v2

    nop

    nop

    nop

    nop

    aput-object v13, v9, v4

    nop

    aput-object v14, v9, v8

    nop

    invoke-static {v9}, Lsgj;->ae([Lsui;)Lkjj;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    new-instance v8, Lglv;

    nop

    nop

    nop

    nop

    nop

    move-object v9, v8

    nop

    move-object v10, v1

    nop

    nop

    nop

    nop

    invoke-direct/range {v9 .. v15}, Lglv;-><init>(Lglx;Lgmy;Lsui;Lsuu;Lsuu;Lpdh;)V

    iget-object v9, v1, Lglx;->a:Lsuk;

    nop

    nop

    invoke-virtual {v4, v8, v9}, Lkjj;->b(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v8

    nop

    nop

    nop

    nop

    new-instance v4, Lghf;

    nop

    invoke-direct {v4, v1, v6}, Lghf;-><init>(Ljava/lang/Object;I)V

    iget-object v1, v1, Lglx;->b:Lowu;

    nop

    nop

    nop

    nop

    invoke-static {v8, v4, v1}, Lolx;->bn(Lsui;Lpbz;Ljava/util/concurrent/Executor;)V

    iget-object v1, v0, Lgmc;->L:Lhdu;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lhdu;->j()I

    move-result v1

    nop

    nop

    iput v1, v0, Lgmc;->q:I

    nop

    nop

    iput-object v8, v0, Lgmc;->H:Lsui;

    nop

    nop

    nop

    nop

    sget-object v1, Lhci;->c:Lhci;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Lhci;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_4

    nop

    nop

    nop

    sget-object v1, Lhci;->k:Lhci;

    nop

    nop

    invoke-virtual {v3, v1}, Lhci;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    iget-object v1, v0, Lgmc;->C:Lgqf;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lgqf;->a()Lgqc;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lgqc;->B:Loyn;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    :cond_4
    iget-object v1, v0, Lgmc;->e:Lnxc;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lnxc;->z()V

    iget-object v1, v0, Lgmc;->e:Lnxc;

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lnxc;->M(Z)V

    iget-object v1, v0, Lgmc;->C:Lgqf;

    nop

    invoke-virtual {v1}, Lgqf;->a()Lgqc;

    move-result-object v1

    nop

    nop

    nop

    iget-object v1, v1, Lgqc;->B:Loyn;

    nop

    nop

    invoke-interface {v1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_5

    nop

    iget-object v1, v0, Lgmc;->d:Lhco;

    nop

    nop

    invoke-virtual {v1}, Lhco;->j()Z

    move-result v1

    nop

    if-eqz v1, :cond_5

    nop

    nop

    nop

    iget-object v1, v0, Lgmc;->C:Lgqf;

    nop

    nop

    invoke-virtual {v1}, Lgqf;->a()Lgqc;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lgqc;->B:Loyn;

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    invoke-interface {v1, v2}, Loyn;->a(Ljava/lang/Object;)V

    :cond_5
    new-instance v9, Ljbd;

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    move-object v1, v9

    nop

    nop

    move-object/from16 v2, p0

    nop

    nop

    nop

    move-object/from16 v3, p1

    nop

    nop

    nop

    move-object v4, v5

    nop

    nop

    nop

    nop

    move-object v5, v8

    nop

    nop

    nop

    nop

    invoke-direct/range {v1 .. v6}, Ljbd;-><init>(Lgmc;Lhci;Lpdh;Lsui;I)V

    iget-object v0, v0, Lgmc;->D:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    invoke-static {v8, v9, v0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    monitor-exit v7

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_6
    :goto_f
    sget-object v0, Lgmc;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    const/16 v1, 0x1b5

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Capture session already started. Ignoring..."

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v7

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    monitor-exit v7

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lgmc;->a:Lsdb;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    const-string v0, "gmc"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Lgqi;Lglx;Lgvg;Lgqf;Ljava/util/concurrent/Executor;Lfdn;Ltxm;Ltxm;Lhco;Lnxc;Ljdc;Lowu;Lpdf;Lngo;Lfdo;Lmkr;Lrbh;Lhdu;Lhtr;Lhif;Lgvg;Lhdn;Lhoh;Lobe;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    move-object v1, p5

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object/from16 v1, p21

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

    nop

    :goto_2
    iput-object v1, v0, Lgmc;->i:Lngu;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object/from16 v1, p18

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_0
    goto/32 :goto_3e

    nop

    :goto_6
    move-object v1, p10

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_7
    move-object v1, p8

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v1, v0, Lgmc;->r:Ljava/util/List;

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

    nop

    nop

    :goto_a
    new-instance v1, Lgmb;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v1, v0, Lgmc;->u:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_c
    move-object v1, p3

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

    :goto_d
    const v0, 0x1a

    nop

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

    :goto_e
    move-object/from16 v1, p22

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v1, v0, Lgmc;->b:Lgqi;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    move-object v1, p9

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_11
    iput-object v1, v0, Lgmc;->v:Lhif;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v1, v0, Lgmc;->z:Lfdn;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_13
    move-object v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    move-object/from16 v1, p20

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

    :goto_16
    iput-object v1, v0, Lgmc;->F:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v1, p0}, Lgma;-><init>(Lgmc;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    iput-object v1, v0, Lgmc;->A:Lfdo;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v1, v0, Lgmc;->G:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1b
    iput-object v1, v0, Lgmc;->x:Lobe;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x10

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

    :goto_1d
    iput-object v1, v0, Lgmc;->y:Lgvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1e
    iput-object v1, v0, Lgmc;->k:Ljdb;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1f
    iput-object v1, v0, Lgmc;->d:Lhco;

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

    nop

    :goto_20
    iput-object v1, v0, Lgmc;->M:Lrbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_21
    move-object/from16 v1, p23

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

    :goto_22
    move-object v1, p4

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v1, v0, Lgmc;->c:Lowu;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v1, v0, Lgmc;->w:Lhdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_25
    move-object/from16 v1, p19

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move-object/from16 v1, p16

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v1, p0}, Lgmb;-><init>(Lgmc;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_28
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3b

    nop

    nop

    :goto_29
    move-object v1, p7

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object v1, v0, Lgmc;->h:Lhtr;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object v1, v0, Lgmc;->B:Lglx;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-object v1, v0, Lgmc;->j:Ljdc;

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2f
    move-object v1, p12

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_30
    iput-object v1, v0, Lgmc;->e:Lnxc;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v1, Lgma;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_32
    move-object/from16 v1, p15

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

    :goto_33
    new-instance v1, Ljava/lang/Object;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move-object/from16 v1, p14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_35
    move-object v1, p2

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

    nop

    nop

    :goto_36
    move-object v1, p11

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_37
    invoke-static {}, Lnzk;->aV()Lmyr;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_38
    move-object/from16 v1, p17

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iput-object v1, v0, Lgmc;->E:Ltxm;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3a
    move-object v1, p6

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3b
    iput-object v1, v0, Lgmc;->s:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iput-object v1, v0, Lgmc;->L:Lhdu;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_3d
    move-object/from16 v1, p24

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_40
    iput-object v1, v0, Lgmc;->I:Lmyr;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_41
    iput-object v1, v0, Lgmc;->g:Lmkr;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_44
    iput-object v1, v0, Lgmc;->D:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move-object v1, p13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move-object v0, p0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iput-object v1, v0, Lgmc;->C:Lgqf;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iput-object v1, v0, Lgmc;->K:Lgvg;

    nop

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

    nop

    :goto_49
    iput-object v1, v0, Lgmc;->f:Lngo;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop
.end method

.method private final c43d12f4f4da28dd6c943a4effe477b7m()Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    :try_start_0
    iget-object p0, p0, Lgmc;->l:Lgmy;

    nop

    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    const/4 p0, 0x1

    nop

    goto :goto_1

    nop

    nop

    :cond_0
    const/4 p0, 0x0

    nop

    nop

    nop

    :goto_1
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lgmc;->s:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private final e94656b6137dd01f26085f984afe853em()V
    .locals 7

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
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

    nop

    :goto_2
    iget-object v0, p0, Lgmc;->s:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lgmc;->m:Lgqc;

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    iget-object v1, p0, Lgmc;->C:Lgqf;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lgqf;->a()Lgqc;

    move-result-object v1

    nop

    nop

    nop

    iput-object v1, p0, Lgmc;->m:Lgqc;

    nop

    :cond_0
    iget-object v1, p0, Lgmc;->m:Lgqc;

    nop

    nop

    nop

    iget-object v1, v1, Lgqc;->g:Loyn;

    nop

    nop

    nop

    nop

    check-cast v1, Loxv;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lgqa;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lgqa;->a:Lgqa;

    nop

    invoke-virtual {v1, v2}, Lgqa;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lgmc;->E:Ltxm;

    nop

    nop

    check-cast v1, Lgts;

    nop

    nop

    nop

    invoke-virtual {v1}, Lgts;->b()Lgtr;

    move-result-object v1

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lgmc;->J:Lgtr;

    nop

    iget-object v2, v1, Lgtr;->d:Ljava/lang/Object;

    nop

    monitor-enter v2

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-boolean v3, v1, Lgtr;->e:Z

    nop

    nop

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-boolean v3, v1, Lgtr;->f:Z

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lgtr;->a()V

    :cond_2
    invoke-virtual {v1}, Lgtr;->b()V

    iget-object v3, v1, Lgtr;->a:Landroid/media/AudioManager;

    nop

    iget-object v4, v1, Lgtr;->b:Landroid/media/AudioDeviceCallback;

    nop

    nop

    nop

    iget-object v5, v1, Lgtr;->c:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4, v5}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v3, v1, Lgtr;->f:Z

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_5
    :try_start_2
    iget-object v1, p0, Lgmc;->K:Lgvg;

    nop

    nop

    nop

    nop

    sget-object v2, Lgst;->a:Lgst;

    nop

    invoke-virtual {v1, v2}, Lgvg;->k(Lgst;)Lows;

    move-result-object v1

    nop

    nop

    iget-object v2, p0, Lgmc;->J:Lgtr;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    iget-object v1, p0, Lgmc;->K:Lgvg;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lgst;->a:Lgst;

    nop

    nop

    invoke-virtual {v1, v2}, Lgvg;->k(Lgst;)Lows;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lgmc;->j:Ljdc;

    nop

    nop

    iget-object v3, p0, Lgmc;->k:Ljdb;

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Ljdc;->b(Ljdb;)V

    new-instance v2, Lfym;

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0x14

    nop

    invoke-direct {v2, p0, v3}, Lfym;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    iget-object v1, p0, Lgmc;->K:Lgvg;

    nop

    nop

    nop

    sget-object v2, Lgst;->a:Lgst;

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lgvg;->k(Lgst;)Lows;

    move-result-object v1

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lgmc;->f:Lngo;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lgmc;->i:Lngu;

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lngo;->e(Lngu;)Lpci;

    move-result-object v2

    nop

    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    iget-object v1, p0, Lgmc;->F:Ltxm;

    nop

    nop

    nop

    nop

    check-cast v1, Lgtp;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lgtp;->b()Lgto;

    move-result-object v1

    nop

    nop

    nop

    iput-object v1, p0, Lgmc;->t:Lgto;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lgto;->e:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v2

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v3, v1, Lgto;->d:Lows;

    nop

    iget-object v4, v1, Lgto;->f:Llxr;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Llxr;->a:Loyn;

    nop

    new-instance v5, Lgqd;

    nop

    const/4 v6, 0x5

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v6}, Lgqd;-><init>(I)V

    invoke-static {v4, v5}, Loyi;->h(Loyd;Lrsk;)Loyd;

    move-result-object v4

    nop

    nop

    new-instance v5, Lgqe;

    nop

    nop

    nop

    const/4 v6, 0x6

    nop

    nop

    invoke-direct {v5, v1, v6}, Lgqe;-><init>(Ljava/lang/Object;I)V

    sget-object v6, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5, v6}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Lows;->d(Lpci;)V

    iget-object v3, v1, Lgto;->d:Lows;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v1, Lgto;->f:Llxr;

    nop

    nop

    iget-object v4, v4, Llxr;->c:Loyn;

    nop

    new-instance v5, Lgqe;

    nop

    nop

    const/4 v6, 0x7

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v1, v6}, Lgqe;-><init>(Ljava/lang/Object;I)V

    sget-object v6, Lstd;->a:Lstd;

    nop

    nop

    invoke-interface {v4, v5, v6}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v4

    nop

    invoke-virtual {v3, v4}, Lows;->d(Lpci;)V

    new-instance v3, Landroid/content/IntentFilter;

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    nop

    nop

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, v1, Lgto;->b:Landroid/app/Activity;

    nop

    nop

    nop

    iget-object v5, v1, Lgto;->l:Lhoh;

    nop

    nop

    nop

    nop

    sget-object v5, Lhly;->a:Lhmo;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lgto;->i:Landroid/content/BroadcastReceiver;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v1, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    monitor-exit v2

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lgmc;->K:Lgvg;

    nop

    nop

    nop

    sget-object v2, Lgst;->a:Lgst;

    nop

    nop

    invoke-virtual {v1, v2}, Lgvg;->k(Lgst;)Lows;

    move-result-object v1

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lgmc;->t:Lgto;

    nop

    invoke-virtual {v1, p0}, Lows;->d(Lpci;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    goto :goto_7

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_5
    monitor-exit v2

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    :try_start_7
    monitor-exit v2

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    nop

    nop

    nop

    nop

    :cond_3
    :goto_7
    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/32 :goto_c

    nop

    nop

    :goto_8
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

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

    :goto_c
    throw p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a()Lgmy;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lgmc;->s:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lgmc;->l:Lgmy;

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop
.end method

.method public final b(Lgoc;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lgmc;->s:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lgmc;->r:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Lhci;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    iget-object v0, p0, Lgmc;->s:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Lgmc;->r()V

    invoke-direct {p0, p1}, Lgmc;->430f03c2ea70bd28108d593eca0c7c30m(Lhci;)V

    monitor-exit v0

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lgmc;->m()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1f

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iget-object v0, p0, Lgmc;->s:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x4

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

    :goto_8
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lgmc;->C:Lgqf;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lgqf;->a()Lgqc;

    move-result-object v1

    nop

    nop

    iput-object v1, p0, Lgmc;->m:Lgqc;

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    goto/32 :goto_3

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

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xf

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
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lgmc;->b:Lgqi;

    nop

    nop

    invoke-virtual {v1}, Lgqi;->a()Lnne;

    move-result-object v1

    nop

    nop

    nop

    sget-object v2, Lnne;->f:Lnne;

    nop

    if-eq v1, v2, :cond_1

    nop

    nop

    nop

    sget-object v2, Lnne;->n:Lnne;

    nop

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_0

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v1, p0, Lgmc;->d:Lhco;

    nop

    nop

    new-instance v2, Lghh;

    nop

    nop

    nop

    nop

    const/16 v3, 0x12

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, v3}, Lghh;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lhco;->h(Ljava/lang/Runnable;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_1
    :goto_6
    sget-object p0, Lgmc;->a:Lsdb;

    nop

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    const/16 v2, 0x1b8

    nop

    nop

    nop

    invoke-interface {p0, v2}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    const-string v2, "Camera switch not supported for %s"

    nop

    nop

    nop

    invoke-interface {p0, v2, v1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_8
    iget-object v0, p0, Lgmc;->s:Ljava/lang/Object;

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop
.end method

.method public final f(I)V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_c

    nop

    :goto_2
    iget-object v0, p0, Lgmc;->s:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    :goto_6
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz p1, :cond_1

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

    :cond_1
    :try_start_0
    iput-boolean v2, v1, Lgmy;->u:Z

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit v3

    nop

    goto :goto_9

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw p0

    nop

    nop

    :cond_2
    :goto_9
    iget-object p0, p0, Lgmc;->m:Lgqc;

    nop

    iget-object p0, p0, Lgqc;->f:Loyn;

    nop

    nop

    nop

    nop

    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    move-object p1, p0

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Loxv;

    nop

    nop

    nop

    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_3

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    :cond_4
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-direct {p0}, Lgmc;->c43d12f4f4da28dd6c943a4effe477b7m()Z

    move-result v1

    nop

    if-eqz v1, :cond_4

    nop

    iget-object v1, p0, Lgmc;->l:Lgmy;

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    iget-object v3, v1, Lgmy;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v3

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final g(Z)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1f

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    :try_start_0
    invoke-direct {p0}, Lgmc;->c43d12f4f4da28dd6c943a4effe477b7m()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    iget-object v1, p0, Lgmc;->l:Lgmy;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Lgmy;->k(Z)V

    iget-boolean p1, p0, Lgmc;->o:Z

    nop

    nop

    nop

    nop

    if-nez p1, :cond_1

    nop

    nop

    nop

    iget-boolean p1, p0, Lgmc;->n:Z

    nop

    nop

    if-eqz p1, :cond_4

    nop

    :cond_1
    iget-object p1, p0, Lgmc;->f:Lngo;

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    invoke-interface {p1, v1}, Lngo;->E(Z)V

    iput-boolean v1, p0, Lgmc;->o:Z

    nop

    nop

    iput-boolean v1, p0, Lgmc;->n:Z

    nop

    nop

    goto :goto_7

    nop

    nop

    :cond_2
    iget-object p1, p0, Lgmc;->m:Lgqc;

    nop

    nop

    iget-object p1, p1, Lgqc;->g:Loyn;

    nop

    check-cast p1, Loxv;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    sget-object v1, Lgqa;->b:Lgqa;

    nop

    if-ne p1, v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    const/4 p1, 0x1

    nop

    iput-boolean p1, p0, Lgmc;->o:Z

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    :cond_3
    sget-object p1, Lgmc;->a:Lsdb;

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0x1bb

    nop

    invoke-interface {p1, v1}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    const-string v1, "onShutterButtonClicked ignored with state: %s"

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lgmc;->m:Lgqc;

    nop

    nop

    iget-object p0, p0, Lgqc;->g:Loyn;

    nop

    nop

    nop

    nop

    check-cast p0, Loxv;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Loxv;->d:Ljava/lang/Object;

    nop

    invoke-interface {p1, v1, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_7
    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    :goto_a
    iget-object v0, p0, Lgmc;->s:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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
.end method

.method public final h()V
    .locals 11

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x2

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

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    const v0, 0x10

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

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    invoke-direct {p0}, Lgmc;->c43d12f4f4da28dd6c943a4effe477b7m()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lgmc;->l:Lgmy;

    nop

    if-eqz v1, :cond_4

    nop

    invoke-static {}, Lowu;->a()V

    iget-object p0, v1, Lgmy;->e:Ljava/lang/Object;

    nop

    monitor-enter p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, v1, Lgmy;->w:Lgni;

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    invoke-static {}, Lowu;->a()V

    iget-object v2, v1, Lgni;->e:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v2

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, v1, Lgni;->C:Lgnh;

    nop

    sget-object v4, Lgnh;->c:Lgnh;

    nop

    if-eq v3, v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lgnh;->d:Lgnh;

    nop

    if-eq v3, v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lgnh;->b:Lgnh;

    nop

    nop

    nop

    nop

    nop

    if-ne v3, v4, :cond_2

    nop

    nop

    nop

    :cond_1
    iget-object v3, v1, Lgni;->c:Lgnn;

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Lgnn;->j(Z)V

    invoke-static {}, Llxm;->a()Llxm;

    move-result-object v5

    nop

    nop

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    sget-object v3, Llxo;->p:Llxo;

    nop

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v8, v9}, Lhqx;->a(Llxo;J)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    sget-object v9, Llxo;->p:Llxo;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v1, Lgni;->L:Lmhz;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lmhz;->f()Lryh;

    move-result-object v10

    nop

    nop

    nop

    nop

    invoke-static/range {v5 .. v10}, Llxn;->b(Llxm;JLjava/lang/String;Llxo;Lryh;)Llxn;

    move-result-object v3

    nop

    nop

    nop

    nop

    iget-object v4, v1, Lgni;->t:Lhrb;

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v5

    nop

    invoke-interface {v4, v3, v5}, Lhrb;->m(Llxn;Lj$/util/Optional;)V

    iget-object v4, v1, Lgni;->y:Ljava/util/List;

    nop

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lgni;->m:Lgvz;

    nop

    invoke-interface {v4, v3}, Lgvz;->a(Llxn;)Lsui;

    move-result-object v4

    nop

    nop

    nop

    nop

    iget-object v5, v1, Lgni;->c:Lgnn;

    nop

    nop

    nop

    iget-object v5, v5, Lgnn;->A:Lghe;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lghe;->n()V

    new-instance v5, Lgfq;

    nop

    nop

    nop

    nop

    const/4 v6, 0x5

    nop

    nop

    const/4 v7, 0x0

    nop

    invoke-direct {v5, v1, v3, v6, v7}, Lgfq;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[C)V

    iget-object v1, v1, Lgni;->b:Lowu;

    nop

    nop

    nop

    invoke-static {v4, v5, v1}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    :cond_2
    monitor-exit v2

    nop

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    nop

    :cond_3
    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v1

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    nop

    :cond_4
    sget-object v1, Lgmc;->a:Lsdb;

    nop

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    const/16 v2, 0x1be

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    const-string v2, "onSnapshotButtonClicked ignored with state: %s"

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lgmc;->m:Lgqc;

    nop

    nop

    iget-object p0, p0, Lgqc;->g:Loyn;

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Loxv;

    nop

    nop

    iget-object p0, p0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v1, v2, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_c
    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lgmc;->s:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    const v1, 0xd

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

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lgmc;->s:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    :try_start_0
    invoke-direct {p0}, Lgmc;->c43d12f4f4da28dd6c943a4effe477b7m()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lgmc;->l:Lgmy;

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object p0, v1, Lgmy;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x1

    nop

    :try_start_1
    iput-boolean v2, v1, Lgmy;->u:Z

    nop

    nop

    nop

    monitor-exit p0

    nop

    goto :goto_8

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    sget-object v1, Lgmc;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    const/16 v2, 0x1c0

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "onThumbnailButtonClicked ignored with state: %s"

    nop

    nop

    iget-object p0, p0, Lgmc;->m:Lgqc;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lgqc;->g:Loyn;

    nop

    check-cast p0, Loxv;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v1, v2, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_8
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_4

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop
.end method

.method public final j(Z)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    :try_start_0
    iput-boolean p1, v1, Lgmy;->u:Z

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw p1

    nop

    :cond_1
    sget-object p1, Lgmc;->a:Lsdb;

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0x1c2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    const-string v1, "onWindowFocusChanged ignored with state: %s"

    nop

    iget-object p0, p0, Lgmc;->m:Lgqc;

    nop

    nop

    iget-object p0, p0, Lgqc;->g:Loyn;

    nop

    nop

    nop

    check-cast p0, Loxv;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Loxv;->d:Ljava/lang/Object;

    nop

    invoke-interface {p1, v1, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    monitor-exit v0

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-direct {p0}, Lgmc;->c43d12f4f4da28dd6c943a4effe477b7m()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    iget-object v1, p0, Lgmc;->l:Lgmy;

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    iget-object p0, v1, Lgmy;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_f

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lgmc;->s:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    const v1, 0x9

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    throw p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final k(Lgoc;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lgmc;->r:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lgmc;->s:Ljava/lang/Object;

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
.end method

.method public final l(Z)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget-object v0, p0, Lgmc;->s:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    sget-object p1, Lhci;->b:Lhci;

    nop

    nop

    invoke-direct {p0, p1}, Lgmc;->430f03c2ea70bd28108d593eca0c7c30m(Lhci;)V

    goto :goto_5

    nop

    :goto_4
    invoke-direct {p0}, Lgmc;->e94656b6137dd01f26085f984afe853em()V

    :goto_5
    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final m()V
    .locals 4

    goto/32 :goto_2

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    const v1, 0x18

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

    :goto_2
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Lgmc;->r()V

    iget-object v1, p0, Lgmc;->J:Lgtr;

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    invoke-virtual {v1}, Lgtr;->a()V

    :cond_1
    iget-object v1, p0, Lgmc;->K:Lgvg;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/util/HashSet;

    nop

    iget-object v3, v1, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    nop

    nop

    nop

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lgst;

    nop

    invoke-virtual {v1, v3}, Lgvg;->l(Lgst;)V

    goto :goto_6

    nop

    nop

    :cond_2
    iget-object p0, p0, Lgmc;->m:Lgqc;

    nop

    nop

    nop

    nop

    nop

    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lgqa;->a:Lgqa;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Lgqc;->a(Lgqa;)V

    :cond_3
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lgmc;->s:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final n()Z
    .locals 5

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    :goto_1
    const v0, 0x1e

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

    :goto_2
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
    iget-object v0, p0, Lgmc;->s:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lgmc;->m:Lgqc;

    nop

    nop

    iget-object v1, v1, Lgqc;->v:Loyd;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lmyr;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lgmc;->I:Lmyr;

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    goto :goto_5

    nop

    nop

    :cond_1
    invoke-static {v2}, Lnzk;->aW(Lmyr;)Z

    move-result v2

    nop

    invoke-static {v1}, Lnzk;->aW(Lmyr;)Z

    move-result v4

    nop

    nop

    nop

    if-eq v2, v4, :cond_2

    nop

    const/4 v3, 0x1

    nop

    nop

    :cond_2
    :goto_5
    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lgmc;->I:Lmyr;

    nop

    nop

    nop

    :cond_3
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return v3

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xc

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop
.end method

.method public final o()Z
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x15

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

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
    iget-object v0, p0, Lgmc;->s:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    const v1, 0xb

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

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lgmc;->m:Lgqc;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lgqc;->g:Loyn;

    nop

    check-cast v1, Loxv;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    sget-object v2, Lgqa;->e:Lgqa;

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_1

    nop

    invoke-virtual {p0, v3}, Lgmc;->g(Z)V

    monitor-exit v0

    nop

    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    return p0

    nop

    :cond_1
    monitor-exit v0

    nop

    nop

    nop

    return v3

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final p()Z
    .locals 9

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    iget-object v0, p0, Lgmc;->s:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    goto :goto_6

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit v4

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw v1

    nop

    :catchall_1
    move-exception v1

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v1

    nop

    nop

    :cond_0
    monitor-exit p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_6
    :try_start_3
    monitor-exit v0

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x7

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    monitor-enter v0

    nop

    nop

    nop

    :try_start_4
    invoke-direct {p0}, Lgmc;->c43d12f4f4da28dd6c943a4effe477b7m()Z

    move-result v1

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    iget-object v1, p0, Lgmc;->l:Lgmy;

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    invoke-static {}, Lowu;->a()V

    iget-object p0, v1, Lgmy;->e:Ljava/lang/Object;

    nop

    monitor-enter p0

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iget-object v1, v1, Lgmy;->w:Lgni;

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    iget-object v3, v1, Lgni;->e:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v3

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v4, v1, Lgni;->C:Lgnh;

    nop

    nop

    nop

    nop

    sget-object v5, Lgnh;->c:Lgnh;

    nop

    if-eq v4, v5, :cond_1

    nop

    nop

    nop

    sget-object v4, Lgni;->a:Lsdb;

    nop

    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    const/16 v5, 0x20f

    nop

    nop

    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v5, "Pause button ignored with state: %s"

    nop

    nop

    nop

    iget-object v1, v1, Lgni;->C:Lgnh;

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5, v1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v3

    nop

    goto/16 :goto_c

    nop

    :cond_1
    const-string v4, "Pause recording."

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4}, Lgni;->f(Ljava/lang/String;)V

    iget-object v4, v1, Lgni;->v:Lpdf;

    nop

    nop

    const-string v5, "onPauseButtonClicked"

    nop

    nop

    invoke-interface {v4, v5}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v4, v1, Lgni;->D:Lgsz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lgsz;->a:Lpak;

    nop

    nop

    invoke-interface {v4}, Lpak;->q()V

    iget-object v4, v1, Lgni;->n:Lgsf;

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    nop

    const-wide/16 v7, 0x3e8

    nop

    nop

    nop

    nop

    nop

    div-long/2addr v5, v7

    nop

    monitor-enter v4

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v7, v4, Lgsf;->b:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5}, Lsay;->c(Ljava/lang/Comparable;)Lsay;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    monitor-exit v4

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v4, v1, Lgni;->f:Lgsr;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lgsr;->e()V

    iget-object v4, v1, Lgni;->M:Lgvg;

    nop

    nop

    nop

    iget-object v4, v4, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v4, Lmhf;

    nop

    nop

    nop

    nop

    const v5, 0x7f130085

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Lmhf;->c(I)V

    iget-object v4, v1, Lgni;->P:Lgvg;

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Lgvg;->n(I)V

    sget-object v4, Lgnh;->d:Lgnh;

    nop

    nop

    invoke-virtual {v1, v4}, Lgni;->l(Lgnh;)V

    iget-object v4, v1, Lgni;->j:Lgqg;

    nop

    nop

    iget-boolean v4, v4, Lgqg;->F:Z

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_2

    nop

    nop

    nop

    iget-object v4, v1, Lgni;->s:Lgzm;

    nop

    invoke-virtual {v4, v2}, Lgzm;->c(Z)V

    :cond_2
    iget-object v1, v1, Lgni;->v:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpdf;->g()V

    monitor-exit v3

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    :goto_b
    move v2, v5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    :try_start_9
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/32 :goto_5

    nop

    nop

    :goto_d
    return v2

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v1

    nop

    nop

    :try_start_a
    monitor-exit p0

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v1

    nop

    nop

    nop

    :cond_4
    sget-object v1, Lgmc;->a:Lsdb;

    nop

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    const/16 v3, 0x1c8

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    const-string v3, "onPauseButtonClicked ignored with state: %s"

    nop

    iget-object p0, p0, Lgmc;->m:Lgqc;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lgqc;->g:Loyn;

    nop

    nop

    nop

    check-cast p0, Loxv;

    nop

    nop

    nop

    iget-object p0, p0, Loxv;->d:Ljava/lang/Object;

    nop

    invoke-interface {v1, v3, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    nop

    nop

    return v2

    nop

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    throw p0

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final q()Z
    .locals 8

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    :try_start_0
    invoke-direct {p0}, Lgmc;->c43d12f4f4da28dd6c943a4effe477b7m()Z

    move-result v1

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    iget-object v1, p0, Lgmc;->l:Lgmy;

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Lowu;->a()V

    iget-object p0, v1, Lgmy;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, v1, Lgmy;->w:Lgni;

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v1, Lgni;->e:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v3

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, v1, Lgni;->C:Lgnh;

    nop

    nop

    nop

    sget-object v5, Lgnh;->d:Lgnh;

    nop

    if-eq v4, v5, :cond_0

    nop

    nop

    nop

    sget-object v4, Lgni;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    const/16 v5, 0x210

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v5, "Resume button ignored with state: %s"

    nop

    iget-object v1, v1, Lgni;->C:Lgnh;

    nop

    invoke-interface {v4, v5, v1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v3

    nop

    nop

    nop

    nop

    goto/16 :goto_a

    nop

    :cond_0
    const-string v2, "Resume recording."

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lgni;->f(Ljava/lang/String;)V

    iget-object v2, v1, Lgni;->v:Lpdf;

    nop

    const-string v4, "onResumeButtonClicked"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v4}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v2, v1, Lgni;->M:Lgvg;

    nop

    iget-object v2, v2, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lmhf;

    nop

    nop

    nop

    const v4, 0x7f130086

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Lmhf;->c(I)V

    iget-object v2, v1, Lgni;->P:Lgvg;

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Lgvg;->n(I)V

    sget-object v2, Lgnh;->b:Lgnh;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lgni;->l(Lgnh;)V

    iget-object v2, v1, Lgni;->o:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    new-instance v4, Lgmu;

    nop

    nop

    const/4 v5, 0x5

    nop

    nop

    nop

    invoke-direct {v4, v1, v5}, Lgmu;-><init>(Ljava/lang/Object;I)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    const-wide/16 v6, 0x190

    nop

    invoke-interface {v2, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v1, v1, Lgni;->v:Lpdf;

    nop

    nop

    invoke-interface {v1}, Lpdf;->g()V

    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_5
    const/4 v1, 0x1

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

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    :try_start_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lgmc;->s:Ljava/lang/Object;

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

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_10

    nop

    :catchall_0
    move-exception v1

    nop

    :try_start_4
    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    nop

    nop

    nop

    nop

    :cond_2
    monitor-exit p0

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_10
    :try_start_6
    monitor-exit v0

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/32 :goto_11

    nop

    nop

    :goto_11
    return v2

    nop

    nop

    :catchall_1
    move-exception v1

    nop

    nop

    :try_start_7
    monitor-exit p0

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1

    nop

    :cond_3
    sget-object v1, Lgmc;->a:Lsdb;

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    const/16 v3, 0x1ca

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "onResumeButtonClicked ignored with state: %s"

    nop

    nop

    iget-object p0, p0, Lgmc;->m:Lgqc;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lgqc;->g:Loyn;

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Loxv;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    nop

    nop

    nop

    return v2

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final r()V
    .locals 18

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    :goto_3
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v2, v0, Lgmc;->H:Lsui;

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    invoke-interface {v2}, Lsui;->isDone()Z

    move-result v4

    nop

    if-nez v4, :cond_0

    nop

    invoke-interface {v2, v3}, Lsui;->cancel(Z)Z

    :cond_0
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    iput-object v2, v0, Lgmc;->H:Lsui;

    nop

    iget-object v4, v0, Lgmc;->l:Lgmy;

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

    iget-object v4, v0, Lgmc;->g:Lmkr;

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Lmkq;->c:Lmkq;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Lmkp;->h(Ljava/lang/Enum;)V

    iget-object v4, v0, Lgmc;->p:Lhch;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lgmc;->g:Lmkr;

    nop

    nop

    sget-object v6, Lmkq;->b:Lmkq;

    nop

    sget-object v7, Lmkq;->c:Lmkq;

    nop

    invoke-virtual {v5, v6, v7}, Lmkr;->c(Lmkq;Lmkq;)I

    move-result v5

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Lhch;->g(I)V

    iget-object v5, v0, Lgmc;->L:Lhdu;

    nop

    invoke-virtual {v5}, Lhdu;->k()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Lhch;->e(I)V

    iget-object v5, v0, Lgmc;->m:Lgqc;

    nop

    nop

    iget-object v5, v5, Lgqc;->x:Loyd;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Ljava/lang/Boolean;

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    nop

    nop

    invoke-virtual {v4, v5}, Lhch;->a(Z)V

    iput-object v2, v0, Lgmc;->l:Lgmy;

    nop

    nop

    nop

    :cond_1
    iget-object v4, v0, Lgmc;->p:Lhch;

    nop

    const/4 v5, 0x3

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_12

    nop

    nop

    iget-object v6, v0, Lgmc;->M:Lrbh;

    nop

    nop

    nop

    nop

    iget-byte v7, v4, Lhch;->h:B

    nop

    const/16 v8, 0xf

    nop

    nop

    nop

    if-ne v7, v8, :cond_11

    nop

    nop

    nop

    nop

    nop

    iget-object v13, v4, Lhch;->d:Lpog;

    nop

    nop

    nop

    nop

    nop

    if-eqz v13, :cond_11

    nop

    nop

    nop

    iget v14, v4, Lhch;->i:I

    nop

    nop

    nop

    nop

    nop

    if-eqz v14, :cond_11

    nop

    nop

    nop

    nop

    nop

    iget-object v15, v4, Lhch;->e:Lhci;

    nop

    nop

    nop

    if-eqz v15, :cond_11

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v4, Lhch;->f:Lnne;

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_11

    nop

    nop

    nop

    nop

    new-instance v8, Lhcj;

    nop

    iget v10, v4, Lhch;->a:I

    nop

    nop

    iget v11, v4, Lhch;->b:I

    nop

    nop

    nop

    nop

    nop

    iget v12, v4, Lhch;->c:I

    nop

    nop

    nop

    iget-boolean v4, v4, Lhch;->g:Z

    nop

    nop

    nop

    nop

    move-object v9, v8

    nop

    nop

    nop

    nop

    move-object/from16 v16, v7

    nop

    nop

    nop

    move/from16 v17, v4

    nop

    nop

    nop

    nop

    invoke-direct/range {v9 .. v17}, Lhcj;-><init>(IIILpog;ILhci;Lnne;Z)V

    sget-object v4, Lspx;->a:Lspx;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->m()Ltkb;

    move-result-object v4

    nop

    nop

    nop

    iget v7, v8, Lhcj;->a:I

    nop

    nop

    iget-object v9, v4, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    if-nez v9, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_2
    iget-object v9, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v10, v9

    nop

    nop

    check-cast v10, Lspx;

    nop

    nop

    nop

    iget v11, v10, Lspx;->b:I

    nop

    nop

    nop

    const/4 v12, 0x1

    nop

    nop

    or-int/2addr v11, v12

    nop

    nop

    nop

    nop

    nop

    iput v11, v10, Lspx;->b:I

    nop

    nop

    nop

    nop

    iput v7, v10, Lspx;->c:I

    nop

    nop

    nop

    nop

    iget v7, v8, Lhcj;->b:I

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    if-nez v9, :cond_3

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_3
    iget-object v9, v4, Ltkb;->b:Ltkg;

    nop

    nop

    move-object v10, v9

    nop

    nop

    nop

    check-cast v10, Lspx;

    nop

    nop

    nop

    nop

    nop

    iget v11, v10, Lspx;->b:I

    nop

    nop

    const/4 v13, 0x2

    nop

    or-int/2addr v11, v13

    nop

    nop

    nop

    iput v11, v10, Lspx;->b:I

    nop

    iput v7, v10, Lspx;->d:I

    nop

    nop

    nop

    nop

    nop

    iget v7, v8, Lhcj;->c:I

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    if-nez v9, :cond_4

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_4
    iget-object v9, v4, Ltkb;->b:Ltkg;

    nop

    nop

    move-object v10, v9

    nop

    check-cast v10, Lspx;

    nop

    nop

    nop

    nop

    iget v11, v10, Lspx;->b:I

    nop

    nop

    nop

    nop

    nop

    const/4 v14, 0x4

    nop

    nop

    nop

    nop

    or-int/2addr v11, v14

    nop

    nop

    nop

    nop

    iput v11, v10, Lspx;->b:I

    nop

    nop

    nop

    iput v7, v10, Lspx;->e:I

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v8, Lhcj;->d:Lpog;

    nop

    nop

    nop

    sget-object v10, Lpog;->a:Lpog;

    nop

    nop

    if-ne v7, v10, :cond_5

    nop

    nop

    nop

    nop

    nop

    move v7, v12

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    :cond_5
    move v7, v3

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    if-nez v9, :cond_6

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_6
    iget-object v9, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v9, Lspx;

    nop

    nop

    nop

    nop

    nop

    iget v10, v9, Lspx;->b:I

    nop

    nop

    nop

    const/16 v11, 0x8

    nop

    nop

    nop

    nop

    or-int/2addr v10, v11

    nop

    nop

    nop

    nop

    nop

    iput v10, v9, Lspx;->b:I

    nop

    nop

    nop

    nop

    iput-boolean v7, v9, Lspx;->f:Z

    nop

    nop

    nop

    nop

    nop

    iget v7, v8, Lhcj;->h:I

    nop

    sget-object v9, Lgwo;->a:Lgwo;

    nop

    nop

    nop

    sget-object v9, Lpar;->a:Lpar;

    nop

    nop

    add-int/lit8 v9, v7, -0x1

    nop

    if-eqz v7, :cond_10

    nop

    nop

    if-eqz v9, :cond_9

    nop

    nop

    if-eq v9, v12, :cond_8

    nop

    nop

    if-ne v9, v13, :cond_7

    nop

    move v7, v5

    nop

    nop

    goto :goto_5

    nop

    nop

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    invoke-static {v7}, Lhhg;->u(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    const-string v3, "Not a valid session state: "

    nop

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    :cond_8
    move v7, v13

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    :cond_9
    move v7, v12

    nop

    :goto_5
    iget-object v9, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    if-nez v9, :cond_a

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_a
    iget-object v9, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v9, Lspx;

    nop

    nop

    add-int/lit8 v7, v7, -0x1

    nop

    nop

    nop

    nop

    nop

    iput v7, v9, Lspx;->g:I

    nop

    nop

    iget v7, v9, Lspx;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v7, v7, 0x10

    nop

    iput v7, v9, Lspx;->b:I

    nop

    nop

    nop

    iget-object v7, v8, Lhcj;->e:Lhci;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Lhci;->ordinal()I

    move-result v9

    nop

    nop

    nop

    nop

    packed-switch v9, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/16 :goto_7

    nop

    nop

    nop

    :pswitch_0
    const/16 v13, 0xd

    nop

    nop

    nop

    goto :goto_6

    nop

    :pswitch_1
    const/16 v13, 0xc

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    :pswitch_2
    const/16 v13, 0xb

    nop

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    :pswitch_3
    const/16 v13, 0xa

    nop

    nop

    goto :goto_6

    nop

    :pswitch_4
    const/16 v13, 0x9

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    :pswitch_5
    move v13, v11

    nop

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    :pswitch_6
    const/4 v13, 0x7

    nop

    goto :goto_6

    nop

    :pswitch_7
    const/4 v13, 0x6

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    :pswitch_8
    const/4 v13, 0x5

    nop

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    :pswitch_9
    move v13, v14

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    :pswitch_a
    move v13, v5

    nop

    nop

    nop

    goto :goto_6

    nop

    :pswitch_b
    move v13, v12

    nop

    nop

    :goto_6
    :pswitch_c
    iget-object v7, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    if-nez v7, :cond_b

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_b
    iget-object v7, v4, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v7, Lspx;

    nop

    nop

    nop

    nop

    add-int/lit8 v13, v13, -0x1

    nop

    nop

    iput v13, v7, Lspx;->h:I

    nop

    nop

    iget v9, v7, Lspx;->b:I

    nop

    nop

    or-int/lit8 v9, v9, 0x20

    nop

    nop

    nop

    iput v9, v7, Lspx;->b:I

    nop

    iget-object v7, v8, Lhcj;->f:Lnne;

    nop

    nop

    nop

    nop

    invoke-static {v7, v3}, Lrbh;->l(Lnne;Z)Lsob;

    move-result-object v7

    nop

    nop

    nop

    nop

    iget-object v9, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    nop

    nop

    if-nez v9, :cond_c

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_c
    iget-object v9, v4, Ltkb;->b:Ltkg;

    nop

    move-object v10, v9

    nop

    nop

    nop

    nop

    check-cast v10, Lspx;

    nop

    nop

    nop

    iget v7, v7, Lsob;->T:I

    nop

    nop

    nop

    nop

    iput v7, v10, Lspx;->i:I

    nop

    nop

    iget v7, v10, Lspx;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v7, v7, 0x40

    nop

    iput v7, v10, Lspx;->b:I

    nop

    nop

    nop

    iget-boolean v7, v8, Lhcj;->g:Z

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v8

    nop

    if-nez v8, :cond_d

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_d
    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v8, Lspx;

    nop

    nop

    nop

    nop

    iget v9, v8, Lspx;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit16 v9, v9, 0x80

    nop

    nop

    nop

    iput v9, v8, Lspx;->b:I

    nop

    nop

    nop

    nop

    iput-boolean v7, v8, Lspx;->j:Z

    nop

    invoke-virtual {v4}, Ltkb;->i()Ltkg;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lspx;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v6, Lrbh;->b:Ljava/lang/Object;

    nop

    nop

    sget-object v7, Lskd;->a:Lskd;

    nop

    invoke-virtual {v7}, Ltkg;->m()Ltkb;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    sget-object v8, Lskc;->V:Lskc;

    nop

    nop

    nop

    nop

    iget-object v9, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v9

    nop

    nop

    nop

    nop

    if-nez v9, :cond_e

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkb;->o()V

    :cond_e
    iget-object v9, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    move-object v10, v9

    nop

    nop

    check-cast v10, Lskd;

    nop

    nop

    nop

    nop

    nop

    iget v8, v8, Lskc;->aG:I

    nop

    iput v8, v10, Lskd;->f:I

    nop

    nop

    nop

    nop

    nop

    iget v8, v10, Lskd;->b:I

    nop

    nop

    nop

    nop

    or-int/2addr v8, v12

    nop

    iput v8, v10, Lskd;->b:I

    nop

    invoke-virtual {v9}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    if-nez v8, :cond_f

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkb;->o()V

    :cond_f
    iget-object v8, v7, Ltkb;->b:Ltkg;

    nop

    check-cast v8, Lskd;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v8, Lskd;->Y:Lspx;

    nop

    nop

    iget v4, v8, Lskd;->c:I

    nop

    nop

    nop

    nop

    nop

    const/high16 v9, 0x10000000

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v4, v9

    nop

    nop

    iput v4, v8, Lskd;->c:I

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Lmjv;

    nop

    nop

    invoke-virtual {v6, v7}, Lmjv;->J(Ltkb;)V

    iput-object v2, v0, Lgmc;->p:Lhch;

    nop

    nop

    nop

    goto :goto_8

    nop

    :goto_7
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    const-string v3, "Not a valid session source: "

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    :cond_10
    throw v2

    nop

    nop

    nop

    nop

    nop

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    nop

    nop

    :cond_12
    :goto_8
    iput-boolean v3, v0, Lgmc;->o:Z

    nop

    nop

    iget-object v2, v0, Lgmc;->K:Lgvg;

    nop

    sget-object v3, Lgst;->b:Lgst;

    nop

    nop

    invoke-virtual {v2, v3}, Lgvg;->l(Lgst;)V

    iget-object v2, v0, Lgmc;->K:Lgvg;

    nop

    nop

    nop

    sget-object v3, Lgst;->d:Lgst;

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Lgvg;->l(Lgst;)V

    iget-object v2, v0, Lgmc;->r:Ljava/util/List;

    nop

    nop

    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    nop

    new-instance v3, Lgfl;

    nop

    invoke-direct {v3, v5}, Lgfl;-><init>(I)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, v0, Lgmc;->m:Lgqc;

    nop

    nop

    if-eqz v0, :cond_13

    nop

    nop

    nop

    nop

    sget-object v2, Lgqa;->d:Lgqa;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lgqc;->a(Lgqa;)V

    :cond_13
    monitor-exit v1

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    monitor-exit v1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    throw v0

    nop

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_a
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

    :goto_b
    goto/32 :goto_2

    nop

    nop

    :goto_c
    iget-object v1, v0, Lgmc;->s:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    move-object/from16 v0, p0

    nop

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

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1f

    nop

    goto/32 :goto_10

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

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    if-lez v0, :cond_14

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_0

    nop
.end method
