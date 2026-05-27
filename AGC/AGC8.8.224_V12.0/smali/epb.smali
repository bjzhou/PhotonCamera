.class public final Lepb;
.super Ljava/lang/Object;

# interfaces
.implements Leqc;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Leph;

.field public final d:Lnrm;

.field public final e:Ljvk;

.field public final f:Ldhi;

.field public final g:Lklj;

.field public final h:Lnqk;

.field public final i:Lepv;

.field public final j:Lkbc;

.field public final k:Lgpc;

.field public final l:Lmqp;

.field public final m:Lepl;

.field public final n:Ljava/util/Map;

.field public final o:Lnsb;

.field p:Leqb;

.field public q:Leqg;

.field public final r:Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;

.field public final s:Lgkr;

.field private final u:Lkad;

.field private final v:Ljvs;

.field private final w:Ljava/util/concurrent/Executor;

.field private final x:Ljava/util/concurrent/Executor;

.field private y:Ljty;

.field private final z:Lgkr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/lasagna/MotionBlurControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lepb;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljvk;Ljvs;Lepl;Ljava/util/concurrent/Executor;Lnsb;Lnrm;Lgkr;Lebi;Ldhi;Lklj;Lepv;Lkbc;Lmqp;Lgpc;Leph;Lchl;Lgkr;[B[B[B[B)V
    .locals 7

    move-object v0, p0

    move-object v1, p3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lepb;->b:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lepb;->n:Ljava/util/Map;

    new-instance v2, Leoz;

    invoke-direct {v2, p0}, Leoz;-><init>(Lepb;)V

    iput-object v2, v0, Lepb;->r:Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;

    move-object v2, p1

    iput-object v2, v0, Lepb;->w:Ljava/util/concurrent/Executor;

    move-object v2, p2

    iput-object v2, v0, Lepb;->e:Ljvk;

    move-object v3, p4

    iput-object v3, v0, Lepb;->m:Lepl;

    move-object v4, p5

    iput-object v4, v0, Lepb;->x:Ljava/util/concurrent/Executor;

    move-object v4, p6

    iput-object v4, v0, Lepb;->o:Lnsb;

    move-object v4, p7

    iput-object v4, v0, Lepb;->d:Lnrm;

    move-object v4, p8

    iput-object v4, v0, Lepb;->z:Lgkr;

    move-object/from16 v4, p10

    iput-object v4, v0, Lepb;->f:Ldhi;

    move-object/from16 v4, p11

    iput-object v4, v0, Lepb;->g:Lklj;

    move-object/from16 v4, p12

    iput-object v4, v0, Lepb;->i:Lepv;

    move-object/from16 v4, p13

    iput-object v4, v0, Lepb;->j:Lkbc;

    move-object/from16 v4, p14

    iput-object v4, v0, Lepb;->l:Lmqp;

    move-object/from16 v4, p15

    iput-object v4, v0, Lepb;->k:Lgpc;

    move-object/from16 v4, p16

    iput-object v4, v0, Lepb;->c:Leph;

    iput-object v1, v0, Lepb;->v:Ljvs;

    move-object/from16 v5, p18

    iput-object v5, v0, Lepb;->s:Lgkr;

    new-instance v5, Lgis;

    const/4 v6, 0x1

    move-object/from16 p10, v5

    move-object/from16 p11, p0

    move-object/from16 p12, p4

    move-object/from16 p13, p2

    move-object/from16 p14, p16

    move/from16 p15, v6

    invoke-direct/range {p10 .. p15}, Lgis;-><init>(Lepb;Lepl;Ljvk;Leph;I)V

    iput-object v5, v0, Lepb;->u:Lkad;

    invoke-virtual/range {p9 .. p9}, Lebi;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lnqk;->c:Lnqk;

    goto :goto_0

    :cond_0
    invoke-virtual/range {p9 .. p9}, Lebi;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lnqk;->d:Lnqk;

    goto :goto_0

    :cond_1
    sget-object v2, Lnqk;->b:Lnqk;

    :goto_0
    iput-object v2, v0, Lepb;->h:Lnqk;

    move-object/from16 v2, p17

    iget-object v2, v2, Lchl;->b:Ljuf;

    new-instance v3, Ldsk;

    const/4 v4, 0x7

    invoke-direct {v3, p0, v4}, Ldsk;-><init>(Lepb;I)V

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-interface {p3, v3, v4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljuf;->d(Lkad;)V

    invoke-direct {p0}, Lepb;->k()V

    return-void
.end method

.method public static final i(Lkaf;Lkli;)Lkaf;
    .locals 3

    invoke-interface {p1}, Lkli;->h()Landroid/graphics/Rect;

    move-result-object p1

    new-instance v0, Lkaf;

    iget v1, p0, Lkaf;->a:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget p0, p0, Lkaf;->b:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-direct {v0, v1, p0}, Lkaf;-><init>(II)V

    return-object v0
.end method

.method private final k()V
    .locals 2

    iget-object v0, p0, Lepb;->f:Ldhi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ldhx;->f:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lepb;->v:Ljvs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqg;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lepb;->f:Ldhi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ldhx;->d:Ldhk;

    invoke-interface {v0, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Leqg;->a(I)Leqg;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lepb;->q:Leqg;

    return-void
.end method


# virtual methods
.method public final a()Lkad;
    .locals 4

    invoke-direct {p0}, Lepb;->k()V

    iget-object v0, p0, Lepb;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lepb;->y:Ljty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljty;->a()Lkad;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lepb;->m:Lepl;

    new-instance v2, Leli;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, Leli;-><init>(Lepb;I)V

    invoke-virtual {v1, v2}, Lepl;->f(Ljava/lang/Runnable;)V

    new-instance v1, Ljty;

    iget-object v2, p0, Lepb;->u:Lkad;

    invoke-direct {v1, v2}, Ljty;-><init>(Lkad;)V

    iput-object v1, p0, Lepb;->y:Ljty;

    invoke-virtual {v1}, Ljty;->a()Lkad;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ledg;

    const/16 v3, 0x8

    invoke-direct {v2, v1, v3}, Ledg;-><init>(Lkad;I)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Leea;Leqg;Lnsz;Ljava/lang/Runnable;Leqf;)Lnou;
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p2 .. p2}, Leqg;->name()Ljava/lang/String;

    iget-object v12, v11, Lepb;->b:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    iget-object v1, v11, Lepb;->y:Ljty;

    if-eqz v1, :cond_3

    iget-object v2, v1, Ljty;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v1, v1, Ljty;->b:I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v1, :cond_0

    move-object/from16 v1, p4

    goto/16 :goto_1

    :cond_0
    :try_start_2
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v13

    iget-object v1, v0, Leea;->v:Lgkr;

    iget-object v1, v1, Lgkr;->a:Ljava/lang/Object;

    sget-object v2, Lepb;->t:Lilz;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lgaa;->a(Lilz;F)V

    iget-object v1, v0, Leea;->v:Lgkr;

    iget-object v9, v1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v9}, Lgxl;->h()Lgxy;

    move-result-object v1

    iget v14, v1, Lgxy;->a:I

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    iget-object v15, v11, Lepb;->m:Lepl;

    const-string v10, "processZsl"

    new-instance v8, Lepa;

    move-object v1, v8

    move-object/from16 v2, p0

    move v3, v14

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v13

    move-object/from16 v7, p4

    move-object v0, v8

    move-object/from16 v8, p5

    move-object v11, v10

    move-object/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Lepa;-><init>(Lepb;ILeea;Leqg;Lnph;Ljava/lang/Runnable;Leqf;Lgxl;Lnsz;)V

    move-object/from16 v1, p4

    invoke-virtual {v15, v14, v11, v0, v1}, Lepl;->d(ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    sget-object v2, Lepb;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v3, 0x6b4

    invoke-interface {v2, v3}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const-string v3, "Couldn\'t post processZSL"

    invoke-interface {v2, v3}, Lnah;->o(Ljava/lang/String;)V

    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error enqueuing shot processing for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    new-instance v0, Ldod;

    invoke-direct {v0, v1}, Ldod;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_0

    :cond_1
    :goto_0
    invoke-virtual {v13, v1}, Lnph;->a(Ljava/lang/Throwable;)Z

    :cond_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v13

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_3
    move-object/from16 v1, p4

    :goto_1
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    new-instance v0, Lkdf;

    const-string v1, "CAM_MotionBlurController not initialized, but processShot was called."

    invoke-direct {v0, v1}, Lkdf;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object v0

    monitor-exit v12

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final c(Leea;Ljava/lang/Runnable;)V
    .locals 5

    iget-object v0, p1, Leea;->v:Lgkr;

    iget-object v0, v0, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lgxl;->h()Lgxy;

    move-result-object v0

    iget v0, v0, Lgxy;->a:I

    sget-object v1, Lepb;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v3, 0x6b5

    invoke-interface {v2, v3}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const-string v3, "Aborting shot %s"

    invoke-interface {v2, v3, v0}, Lnah;->p(Ljava/lang/String;I)V

    iget-object v2, p0, Lepb;->w:Ljava/util/concurrent/Executor;

    new-instance v3, Leli;

    const/16 v4, 0x8

    invoke-direct {v3, p0, v4}, Leli;-><init>(Lepb;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lepb;->n:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lepo;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lepo;->c()V

    invoke-virtual {v2, v3}, Lepo;->d(Z)V

    iget-object p1, v2, Lepo;->n:Lcvr;

    iget-object v1, p1, Lcvr;->a:Ljava/lang/Object;

    check-cast v1, Lnwn;

    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_0
    iget-object v1, v1, Lnwn;->b:Lnws;

    check-cast v1, Lnjt;

    sget-object v4, Lnjt;->x:Lnjt;

    iget v4, v1, Lnjt;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Lnjt;->a:I

    const/4 v4, 0x0

    iput-boolean v4, v1, Lnjt;->c:Z

    iget-object p1, p1, Lcvr;->a:Ljava/lang/Object;

    check-cast p1, Lnwn;

    iget-object v1, p1, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_1
    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Lnjt;

    iget v1, p1, Lnjt;->a:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p1, Lnjt;->a:I

    iput-boolean v3, p1, Lnjt;->o:Z

    iget-object p1, v2, Lepo;->h:Lgxl;

    invoke-interface {p1}, Lgxl;->k()Lhjc;

    move-result-object p1

    iget-object v1, v2, Lepo;->n:Lcvr;

    invoke-virtual {v1}, Lcvr;->z()Lnjt;

    move-result-object v1

    check-cast p1, Lhjd;

    iput-object v1, p1, Lhjd;->u:Lnjt;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Couldn\'t find a session for shot %s"

    const/16 v4, 0x6b6

    invoke-static {v1, v2, p1, v4}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :goto_0
    iget-object p1, p0, Lepb;->m:Lepl;

    invoke-virtual {p1, v0, v3, p2}, Lepl;->a(IZLjava/lang/Runnable;)V

    return-void
.end method

.method public final d(Lkpb;Lcom/google/googlex/gcam/FrameMetadata;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lepb;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "Viewfinder image not found."

    const/16 v0, 0x6c1

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    iget-object v0, p0, Lepb;->e:Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lepb;->q:Leqg;

    sget-object v1, Leqg;->c:Leqg;

    invoke-virtual {v0, v1}, Leqg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lepb;->x:Ljava/util/concurrent/Executor;

    new-instance v1, Leow;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Leow;-><init>(Lepb;Lkpb;Lcom/google/googlex/gcam/FrameMetadata;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-interface {p1}, Lkpb;->close()V

    return-void
.end method

.method public final declared-synchronized e(Leqb;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lepb;->p:Leqb;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lepb;->p:Leqb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f(I)V
    .locals 2

    sget-object v0, Lepb;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x6c3

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Shot didn\'t start, removing %s."

    invoke-interface {v0, v1, p1}, Lnah;->p(Ljava/lang/String;I)V

    iget-object v0, p0, Lepb;->e:Ljvk;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lepb;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g(IJ)V
    .locals 2

    iget-object v0, p0, Lepb;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepo;

    if-eqz v0, :cond_0

    iget-object p1, v0, Lepo;->g:Lnph;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :cond_0
    sget-object p2, Lepb;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 p3, 0x6c4

    invoke-interface {p2, p3}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string p3, "Can\'t set the base frame timestamp, shot %s already aborted"

    invoke-interface {p2, p3, p1}, Lnah;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public final declared-synchronized h(Leqb;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lepb;->p:Leqb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j(Lgkr;Lnph;)Lkad;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-direct/range {p0 .. p0}, Lepb;->k()V

    move-object/from16 v7, p1

    iget-object v2, v7, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v2}, Lgxl;->h()Lgxy;

    move-result-object v2

    iget v14, v2, Lgxy;->a:I

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lepb;->p:Leqb;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2, v14}, Leqb;->a(I)Lnou;

    move-result-object v2

    new-instance v4, Leox;

    invoke-direct {v4, v0}, Leox;-><init>(Lnph;)V

    iget-object v5, v1, Lepb;->x:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v4, v5}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v2, v1, Lepb;->p:Leqb;

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object v9, v3

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v15, v1, Lepb;->b:Ljava/lang/Object;

    monitor-enter v15

    :try_start_1
    iget-object v2, v1, Lepb;->y:Ljty;

    if-nez v2, :cond_1

    move-object v13, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljty;->a()Lkad;

    move-result-object v2

    move-object v13, v2

    :goto_1
    if-eqz v13, :cond_2

    iget-object v12, v1, Lepb;->n:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v2, v1, Lepb;->z:Lgkr;

    iget-object v8, v1, Lepb;->c:Leph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v10

    new-instance v6, Lepo;

    iget-object v3, v2, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnrm;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Lgkr;->a:Ljava/lang/Object;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lepl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Lgkr;->d:Ljava/lang/Object;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lkbc;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v2, v6

    move-object/from16 v19, v6

    move-object/from16 v6, v16

    move-object/from16 v7, p1

    move-object/from16 v20, v11

    move-object/from16 v11, p2

    move-object v0, v12

    move-object/from16 v12, v17

    move-object/from16 v21, v13

    move-object/from16 v13, v18

    invoke-direct/range {v2 .. v13}, Lepo;-><init>(Lnrm;Lepl;Ljava/util/concurrent/Executor;Lkbc;Lgkr;Leph;Leqb;Lnph;Lnph;[B[B)V

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lepb;->x:Ljava/util/concurrent/Executor;

    new-instance v2, Lbbh;

    const/16 v3, 0xf

    invoke-direct {v2, v1, v14, v3}, Lbbh;-><init>(Lepb;II)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Leoy;

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-direct {v0, v3, v2}, Leoy;-><init>(Lkad;Lnph;)V

    monitor-exit v15

    return-object v0

    :cond_2
    move-object v2, v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnph;->e(Ljava/lang/Object;)Z

    monitor-exit v15

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
