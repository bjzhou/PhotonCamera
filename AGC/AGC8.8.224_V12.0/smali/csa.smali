.class public final Lcsa;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field private final A:Ljava/lang/Object;

.field private final B:Ldqx;

.field private final C:Ldqx;

.field private final D:Lcvr;

.field private final E:Lbkb;

.field public final a:Liff;

.field public final b:Lico;

.field public final c:Ljava/lang/String;

.field private final d:F

.field private final e:Ljvs;

.field private final f:Ljvs;

.field private final g:Ljvs;

.field private final h:Ljwb;

.field private final i:Lfui;

.field private final j:Lcsd;

.field private final k:Ldbf;

.field private final l:Ljuh;

.field private final m:Ljwb;

.field private final n:Lgyd;

.field private final o:Ljwb;

.field private final p:Lgzm;

.field private final q:Ldhi;

.field private final r:Lklj;

.field private final s:Lmqp;

.field private final t:Lcrm;

.field private u:Lklv;

.field private final v:Ljwb;

.field private final w:Ljwb;

.field private final x:Ljwb;

.field private final y:Ljvs;

.field private z:Lcrz;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ldqx;Lbkb;Lfui;Ljvs;Ljwb;Ljvs;Ljwb;Ljwb;Ljvs;Lcsd;Lcvr;Ldbf;Liff;Lico;Ljuh;Lgzm;Ldhi;Lklj;FLjwb;Lgyd;Lmqp;Ldqx;Lcrm;Ljvs;Ljwb;[B[B[B[B[B)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcsa;->A:Ljava/lang/Object;

    move-object v1, p2

    iput-object v1, v0, Lcsa;->C:Ldqx;

    move-object v1, p3

    iput-object v1, v0, Lcsa;->E:Lbkb;

    move-object v1, p4

    iput-object v1, v0, Lcsa;->i:Lfui;

    move-object v1, p5

    iput-object v1, v0, Lcsa;->f:Ljvs;

    move-object v1, p6

    iput-object v1, v0, Lcsa;->h:Ljwb;

    move-object v1, p7

    iput-object v1, v0, Lcsa;->e:Ljvs;

    move-object v1, p8

    iput-object v1, v0, Lcsa;->w:Ljwb;

    move-object v1, p9

    iput-object v1, v0, Lcsa;->x:Ljwb;

    move-object v1, p10

    iput-object v1, v0, Lcsa;->y:Ljvs;

    move-object v1, p11

    iput-object v1, v0, Lcsa;->j:Lcsd;

    move-object v1, p12

    iput-object v1, v0, Lcsa;->D:Lcvr;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcsa;->k:Ldbf;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcsa;->a:Liff;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcsa;->b:Lico;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcsa;->l:Ljuh;

    const v1, 0x7f1403f6

    move-object v2, p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcsa;->c:Ljava/lang/String;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcsa;->m:Ljwb;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcsa;->n:Lgyd;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcsa;->o:Ljwb;

    new-instance v1, Ljvk;

    sget-object v2, Lcrx;->a:Lcrx;

    invoke-direct {v1, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcsa;->v:Ljwb;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcsa;->p:Lgzm;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcsa;->q:Ldhi;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcsa;->r:Lklj;

    move/from16 v1, p20

    iput v1, v0, Lcsa;->d:F

    move-object/from16 v1, p23

    iput-object v1, v0, Lcsa;->s:Lmqp;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcsa;->B:Ldqx;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcsa;->t:Lcrm;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcsa;->g:Ljvs;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcrz;
    .locals 44

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lcsa;->A:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v1, Lcsa;->k:Ldbf;

    invoke-virtual {v0}, Ldbf;->d()Lklv;

    move-result-object v0

    iget-object v3, v1, Lcsa;->u:Lklv;

    if-ne v0, v3, :cond_0

    iget-object v0, v1, Lcsa;->z:Lcrz;

    if-eqz v0, :cond_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_2
    iget-object v0, v1, Lcsa;->D:Lcvr;

    sget-object v3, Lcua;->b:Lcua;

    invoke-virtual {v0, v3}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, v1, Lcsa;->k:Ldbf;

    invoke-virtual {v0}, Ldbf;->d()Lklv;

    move-result-object v0

    iput-object v0, v1, Lcsa;->u:Lklv;

    iget-object v0, v1, Lcsa;->k:Ldbf;

    invoke-virtual {v0}, Ldbf;->e()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfuz;

    iget-object v3, v1, Lcsa;->q:Ldhi;

    sget-object v4, Ldho;->ag:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v9, Lgdk;

    iget v4, v1, Lcsa;->d:F

    iget-object v5, v1, Lcsa;->e:Ljvs;

    iget-object v7, v1, Lcsa;->q:Ldhi;

    iget-object v8, v1, Lcsa;->r:Lklj;

    move-object v3, v9

    move-object v6, v0

    invoke-direct/range {v3 .. v8}, Lgdk;-><init>(FLjvs;Lkli;Ldhi;Lklj;)V

    goto :goto_0

    :cond_1
    new-instance v10, Lgdk;

    iget v4, v1, Lcsa;->d:F

    iget-object v5, v1, Lcsa;->e:Ljvs;

    iget-object v3, v1, Lcsa;->B:Ldqx;

    iget-object v6, v1, Lcsa;->k:Ldbf;

    invoke-virtual {v6}, Ldbf;->d()Lklv;

    move-result-object v6

    invoke-virtual {v3, v6}, Ldqx;->a(Lklv;)Ljwu;

    move-result-object v3

    invoke-virtual {v3}, Ljwu;->b()Lkaf;

    move-result-object v3

    invoke-static {v3}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v7

    iget-object v8, v1, Lcsa;->q:Ldhi;

    iget-object v9, v1, Lcsa;->r:Lklj;

    move-object v3, v10

    move-object v6, v0

    invoke-direct/range {v3 .. v9}, Lgdk;-><init>(FLjvs;Lkli;Ljzr;Ldhi;Lklj;)V

    move-object v9, v10

    :goto_0
    new-instance v3, Ljvk;

    invoke-virtual {v0}, Lklw;->h()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v3, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lcfv;->q:Lcfv;

    invoke-static {v3, v0}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v0

    new-instance v14, Ljvk;

    sget-object v4, Lfua;->a:[Landroid/hardware/camera2/params/MeteringRectangle;

    sget-object v4, Lftz;->a:Lfua;

    invoke-direct {v14, v4}, Ljvk;-><init>(Ljava/lang/Object;)V

    new-instance v15, Ljvk;

    sget-object v4, Lftz;->a:Lfua;

    invoke-direct {v15, v4}, Ljvk;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lftm;

    invoke-direct {v4, v14, v0}, Lftm;-><init>(Ljvk;Ljvs;)V

    new-instance v5, Lftq;

    invoke-direct {v5, v15, v0}, Lftq;-><init>(Ljvk;Ljvs;)V

    new-instance v0, Ljvk;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v0, v7}, Ljvk;-><init>(Ljava/lang/Object;)V

    iget-object v8, v1, Lcsa;->p:Lgzm;

    sget-object v10, Lgzd;->v:Lgzu;

    invoke-interface {v8, v10}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v8

    new-instance v10, Lcdu;

    const/16 v11, 0xa

    invoke-direct {v10, v1, v11}, Lcdu;-><init>(Lcsa;I)V

    invoke-static {v8, v10}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v8

    iget-object v10, v1, Lcsa;->p:Lgzm;

    sget-object v12, Lgzd;->y:Lgzr;

    invoke-interface {v10, v12}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v10

    sget-object v12, Lcfv;->r:Lcfv;

    invoke-static {v10, v12}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object v10

    iget-object v12, v1, Lcsa;->D:Lcvr;

    sget-object v13, Lcua;->b:Lcua;

    invoke-virtual {v12, v13}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v12

    iget-object v13, v1, Lcsa;->k:Ldbf;

    invoke-virtual {v13}, Ldbf;->i()Z

    move-result v13

    const/16 v11, 0x9

    const/16 v17, 0x1

    if-eqz v13, :cond_2

    const/4 v13, 0x2

    new-array v13, v13, [Ljvs;

    aput-object v10, v13, v6

    aput-object v8, v13, v17

    invoke-static {v13}, Ljvw;->d([Ljvs;)Ljvs;

    move-result-object v6

    new-instance v8, Lckj;

    invoke-direct {v8, v0, v11}, Lckj;-><init>(Ljwb;I)V

    iget-object v10, v1, Lcsa;->l:Ljuh;

    invoke-interface {v6, v8, v10}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljuf;->d(Lkad;)V

    goto :goto_1

    :cond_2
    iget-object v6, v1, Lcsa;->k:Ldbf;

    invoke-virtual {v6}, Ldbf;->j()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcsa;->p:Lgzm;

    sget-object v8, Lgzd;->w:Lgzu;

    invoke-interface {v6, v8}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v6

    new-instance v8, Lccp;

    const/4 v10, 0x7

    invoke-direct {v8, v1, v0, v10}, Lccp;-><init>(Lcsa;Ljwb;I)V

    iget-object v10, v1, Lcsa;->l:Ljuh;

    invoke-interface {v6, v8, v10}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljuf;->d(Lkad;)V

    :cond_3
    :goto_1
    iget-object v6, v1, Lcsa;->h:Ljwb;

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v8}, Ljwb;->bn(Ljava/lang/Object;)V

    new-instance v6, Ljvk;

    invoke-direct {v6, v7}, Ljvk;-><init>(Ljava/lang/Object;)V

    new-instance v10, Ljvk;

    invoke-direct {v10, v7}, Ljvk;-><init>(Ljava/lang/Object;)V

    iget-object v13, v1, Lcsa;->C:Ldqx;

    iget-object v13, v13, Ldqx;->c:Ljava/lang/Object;

    new-instance v11, Lccp;

    move-object/from16 v38, v5

    const/16 v5, 0x8

    invoke-direct {v11, v6, v10, v5}, Lccp;-><init>(Ljwb;Ljwb;I)V

    sget-object v5, Lnnv;->a:Lnnv;

    invoke-interface {v13, v11, v5}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljuf;->d(Lkad;)V

    iget-object v5, v1, Lcsa;->i:Lfui;

    iget-object v5, v5, Lfui;->a:Ljvs;

    new-instance v11, Lckj;

    const/16 v13, 0xa

    invoke-direct {v11, v6, v13}, Lckj;-><init>(Ljwb;I)V

    sget-object v13, Lnnv;->a:Lnnv;

    invoke-interface {v5, v11, v13}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljuf;->d(Lkad;)V

    new-instance v5, Lccp;

    const/16 v11, 0x9

    invoke-direct {v5, v6, v10, v11}, Lccp;-><init>(Ljwb;Ljwb;I)V

    sget-object v11, Lnnv;->a:Lnnv;

    invoke-interface {v0, v5, v11}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljuf;->d(Lkad;)V

    new-instance v5, Lccp;

    const/16 v11, 0xa

    invoke-direct {v5, v6, v10, v11}, Lccp;-><init>(Ljwb;Ljwb;I)V

    sget-object v11, Lnnv;->a:Lnnv;

    invoke-virtual {v9, v5, v11}, Ljwh;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljuf;->d(Lkad;)V

    iget-object v5, v1, Lcsa;->v:Ljwb;

    new-instance v11, Lckj;

    const/16 v13, 0xb

    invoke-direct {v11, v1, v13}, Lckj;-><init>(Lcsa;I)V

    iget-object v13, v1, Lcsa;->l:Ljuh;

    invoke-interface {v5, v11, v13}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljuf;->d(Lkad;)V

    iget-object v5, v1, Lcsa;->j:Lcsd;

    invoke-virtual {v5}, Lcsd;->e()V

    iget-object v5, v5, Lcsd;->b:Ljvk;

    iget-object v11, v1, Lcsa;->j:Lcsd;

    invoke-virtual {v11}, Lcsd;->a()Ljvs;

    move-result-object v36

    iget-object v13, v1, Lcsa;->f:Ljvs;

    if-eqz v13, :cond_e

    iget-object v11, v1, Lcsa;->C:Ldqx;

    iget-object v12, v11, Ldqx;->c:Ljava/lang/Object;

    iget-object v11, v1, Lcsa;->i:Lfui;

    iget-object v11, v11, Lfui;->a:Ljvs;

    if-eqz v11, :cond_d

    move-object/from16 v16, v11

    iget-object v11, v1, Lcsa;->s:Lmqp;

    invoke-virtual {v11}, Lmqp;->g()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v11}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lglm;

    invoke-interface {v11}, Lglm;->b()Ljwb;

    move-result-object v11

    invoke-static {v11}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v11

    move-object/from16 v29, v11

    goto :goto_2

    :cond_4
    sget-object v11, Lmpx;->a:Lmpx;

    move-object/from16 v29, v11

    :goto_2
    iget-object v11, v1, Lcsa;->w:Ljwb;

    if-eqz v11, :cond_c

    move-object/from16 v42, v9

    iget-object v9, v1, Lcsa;->x:Ljwb;

    if-eqz v9, :cond_b

    move-object/from16 v37, v4

    iget-object v4, v1, Lcsa;->y:Ljvs;

    move-object/from16 v17, v13

    iget-object v13, v1, Lcsa;->e:Ljvs;

    if-eqz v13, :cond_a

    move-object/from16 v18, v11

    iget-object v11, v1, Lcsa;->C:Ldqx;

    iget-object v11, v11, Ldqx;->d:Ljava/lang/Object;

    move-object/from16 v19, v11

    iget-object v11, v1, Lcsa;->E:Lbkb;

    iget-object v11, v11, Lbkb;->a:Ljava/lang/Object;

    move-object/from16 v35, v5

    iget-object v5, v1, Lcsa;->h:Ljwb;

    if-eqz v5, :cond_9

    move-object/from16 v32, v4

    new-instance v4, Ljvk;

    move-object/from16 v20, v11

    sget-object v11, Lcry;->a:Lcry;

    invoke-direct {v4, v11}, Ljvk;-><init>(Ljava/lang/Object;)V

    iget-object v11, v1, Lcsa;->v:Ljwb;

    move-object/from16 v21, v11

    iget-object v11, v1, Lcsa;->p:Lgzm;

    move-object/from16 v31, v9

    sget-object v9, Lgzd;->y:Lgzr;

    invoke-interface {v11, v9}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v23

    new-instance v9, Ljvk;

    invoke-direct {v9, v8}, Ljvk;-><init>(Ljava/lang/Object;)V

    new-instance v8, Ljvk;

    invoke-direct {v8, v7}, Ljvk;-><init>(Ljava/lang/Object;)V

    iget-object v7, v1, Lcsa;->m:Ljwb;

    if-eqz v7, :cond_8

    iget-object v11, v1, Lcsa;->n:Lgyd;

    if-eqz v11, :cond_7

    move-object/from16 v28, v7

    iget-object v7, v1, Lcsa;->t:Lcrm;

    move-object/from16 v39, v7

    iget-object v7, v1, Lcsa;->g:Ljvs;

    if-eqz v7, :cond_6

    move-object/from16 v40, v7

    iget-object v7, v1, Lcsa;->o:Ljwb;

    if-eqz v7, :cond_5

    move-object/from16 v41, v7

    new-instance v7, Lcrz;

    move-object/from16 v43, v11

    move-object/from16 v33, v16

    move-object/from16 v30, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v22, v21

    move-object v11, v7

    move-object/from16 v34, v17

    move-object/from16 v16, v3

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v5

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-object/from16 v24, v6

    move-object/from16 v25, v10

    move-object/from16 v26, v9

    move-object/from16 v27, v8

    invoke-direct/range {v11 .. v43}, Lcrz;-><init>(Ljwb;Ljvs;Ljwb;Ljwb;Ljwb;Ljwb;Ljwb;Ljwb;Ljwb;Ljwb;Ljwb;Ljvs;Ljwb;Ljwb;Ljwb;Ljwb;Ljwb;Lmqp;Ljwb;Ljwb;Ljvs;Ljvs;Ljvs;Ljvs;Ljvs;Ljvs;Ljvs;Ljvs;Ljvs;Ljvs;Lgdk;Lgyd;)V

    iput-object v7, v1, Lcsa;->z:Lcrz;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v7

    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "Null actionOnUserEdu"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "Null jupiterSessionActivated"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "Null audioDeviceStateManager"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "Null stabilizationMode"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "Null caf"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "Null zoomRatio"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "Null macroFocusScene"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "Null macroFocusState"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "Null awbSetting"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "Null portraitIdle"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lcsa;->A:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcsa;->z:Lcrz;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
