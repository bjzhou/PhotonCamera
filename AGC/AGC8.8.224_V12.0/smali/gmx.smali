.class public final Lgmx;
.super Ljava/lang/Object;

# interfaces
.implements Lebu;
.implements Lecm;
.implements Lecw;
.implements Lecl;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lmqp;

.field public final c:Lgnq;

.field public final d:Lgue;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Ljava/util/HashMap;

.field private final g:Logd;

.field private final h:Lefk;

.field private final i:Z

.field private final j:Lnsc;

.field private final k:Lgkf;

.field private final l:Lcvr;

.field private final m:Lcvr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/payloadprocessor/SecondaryStereoProcessor"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgmx;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lgue;Lgkf;Lmqp;Logd;Ljava/util/concurrent/Executor;Lcvr;Lgnq;Lefk;Logd;Ldhi;Lnsc;[B[B[B[B[B)V
    .locals 4

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lgmx;->f:Ljava/util/HashMap;

    move-object v1, p1

    iput-object v1, v0, Lgmx;->d:Lgue;

    move-object v1, p2

    iput-object v1, v0, Lgmx;->k:Lgkf;

    move-object v1, p3

    iput-object v1, v0, Lgmx;->b:Lmqp;

    move-object v2, p4

    iput-object v2, v0, Lgmx;->g:Logd;

    move-object v2, p5

    iput-object v2, v0, Lgmx;->e:Ljava/util/concurrent/Executor;

    move-object v2, p6

    iput-object v2, v0, Lgmx;->m:Lcvr;

    move-object v2, p7

    iput-object v2, v0, Lgmx;->c:Lgnq;

    move-object v2, p8

    iput-object v2, v0, Lgmx;->h:Lefk;

    invoke-static {p9}, Lcvr;->M(Logd;)Lcvr;

    move-result-object v2

    iput-object v2, v0, Lgmx;->l:Lcvr;

    sget-object v2, Ldhg;->B:Ldhj;

    move-object v3, p10

    invoke-interface {p10, v2}, Ldhi;->k(Ldhj;)Z

    move-result v2

    iput-boolean v2, v0, Lgmx;->i:Z

    invoke-virtual {p3}, Lmqp;->g()Z

    move-result v1

    invoke-static {v1}, Lmoz;->p(Z)V

    move-object v1, p11

    iput-object v1, v0, Lgmx;->j:Lnsc;

    invoke-interface {p10}, Ldhi;->f()V

    return-void
.end method

.method private static l(Lecu;Lecv;Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Lecq;

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    :cond_0
    invoke-direct {v0, p2}, Lecq;-><init>(Ljava/lang/Throwable;)V

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Lecu;->b(Lecq;)V

    :cond_1
    if-eqz p1, :cond_2

    sget-object p0, Lgmx;->a:Lnak;

    invoke-virtual {p0}, Lnaf;->c()Lnaz;

    move-result-object p0

    invoke-virtual {v0}, Lecq;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Error getting RGB image from secondary shot: %s"

    const/16 v2, 0xbe9

    invoke-static {p0, v1, p2, v2, v0}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    sget p0, Lmvv;->d:I

    sget-object p0, Lmyu;->a:Lmvv;

    check-cast p1, Lgmv;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p0}, Lgmv;->b(Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;Ljava/util/List;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Leea;IJLkou;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Leea;->a()I

    iget-object p5, p0, Lgmx;->f:Ljava/util/HashMap;

    invoke-virtual {p5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lgmw;

    if-nez p5, :cond_0

    sget-object p2, Lgmx;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 p3, 0xc07

    invoke-interface {p2, p3}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    invoke-virtual {p1}, Leea;->a()I

    move-result p1

    const-string p3, "Shot %s hasn\'t been started yet or was aborted!"

    invoke-interface {p2, p3, p1}, Lnah;->p(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p5, Lgmw;->l:Lnph;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object p1, p5, Lgmw;->a:Lnph;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnph;->e(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic b(Lhjg;Lebd;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized c(Leea;Lecq;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p1, p1, Leea;->v:Lgkr;

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->h()Lgxy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgmx;->d(Lgxy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Lgxy;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgmx;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leea;

    iget-object v2, v1, Leea;->v:Lgkr;

    iget-object v2, v2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v2}, Lgxl;->h()Lgxy;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lgmx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0xbed

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "Aborting shot %s"

    invoke-virtual {v1}, Leea;->a()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lnah;->p(Ljava/lang/String;I)V

    iget-object v0, p0, Lgmx;->m:Lcvr;

    invoke-virtual {v0, p1}, Lcvr;->L(Lgxy;)Leec;

    iget-object p1, p0, Lgmx;->f:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgmp;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lgmp;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized e(Leea;Lkeb;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgmx;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgmw;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lgmp;->c(Lkeb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {p2}, Lkeb;->b()Lkeg;

    invoke-virtual {p1}, Leea;->a()I

    invoke-interface {p2}, Lkeb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(Leea;Lcom/google/googlex/gcam/BurstSpec;Lkou;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Leea;->a()I

    iget-object v0, p0, Lgmx;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lgmx;->f:Ljava/util/HashMap;

    new-instance v9, Lgmw;

    iget-object v3, p1, Leea;->v:Lgkr;

    iget-object v1, p0, Lgmx;->k:Lgkf;

    invoke-virtual {v1}, Lgkf;->a()Lebb;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v8}, Lgmw;-><init>(Lgmx;Lgkr;Lebb;Lcom/google/googlex/gcam/BurstSpec;Lkou;[B[B)V

    invoke-virtual {v0, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g(Lgxy;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgmx;->m:Lcvr;

    invoke-virtual {v0, p1}, Lcvr;->K(Lgxy;)Leeb;

    move-result-object p1

    invoke-virtual {p1, p0}, Leeb;->a(Lecm;)V

    invoke-virtual {p1, p0}, Leeb;->f(Lecw;)V

    iget-object v0, p0, Lgmx;->l:Lcvr;

    invoke-virtual {v0}, Lcvr;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Leeb;->f:Lmwl;

    if-nez v0, :cond_0

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v0

    iput-object v0, p1, Leeb;->f:Lmwl;

    :cond_0
    iget-object p1, p1, Leeb;->f:Lmwl;

    invoke-virtual {p1, p0}, Lmwl;->g(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized h(Leea;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Leea;->a()I

    iget-object v0, p0, Lgmx;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgmw;

    if-nez v0, :cond_0

    sget-object v0, Lgmx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xc0a

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-virtual {p1}, Leea;->a()I

    move-result p1

    const-string v1, "Shot %s hasn\'t started yet or was aborted!"

    invoke-interface {v0, v1, p1}, Lnah;->p(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lgmx;->e:Ljava/util/concurrent/Executor;

    new-instance v2, Lggh;

    const/4 v3, 0x5

    invoke-direct {v2, p0, p1, v0, v3}, Lggh;-><init>(Lgmx;Leea;Lgmw;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic i(Leea;)V
    .locals 0

    return-void
.end method

.method public final j(Leea;Lcom/google/googlex/gcam/AeResults;)V
    .locals 3

    iget-object v0, p0, Lgmx;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgmw;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lgmx;->l:Lcvr;

    invoke-virtual {p1}, Lcvr;->H()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lecc;

    sget-object v1, Lnqb;->a:Lnqb;

    invoke-virtual {p2, v1}, Lcom/google/googlex/gcam/AeResults;->a(Lnqb;)F

    move-result v1

    iget-object v2, p0, Lgmx;->l:Lcvr;

    invoke-virtual {v2}, Lcvr;->G()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float v1, v1, v2

    sget-object v2, Lnqb;->b:Lnqb;

    invoke-virtual {p2, v2}, Lcom/google/googlex/gcam/AeResults;->a(Lnqb;)F

    move-result p2

    iget-object v2, p0, Lgmx;->l:Lcvr;

    invoke-virtual {v2}, Lcvr;->G()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float p2, p2, v2

    invoke-direct {p1, v1, p2}, Lecc;-><init>(FF)V

    invoke-virtual {v0, p1}, Lgmw;->a(Lecc;)V

    return-void

    :cond_0
    new-instance p1, Lecc;

    const/high16 p2, -0x40800000    # -1.0f

    invoke-direct {p1, p2, p2}, Lecc;-><init>(FF)V

    invoke-virtual {v0, p1}, Lgmw;->a(Lecc;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Leea;->a()I

    return-void
.end method

.method public final synthetic k(Leea;Lgmw;)V
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "Couldn\'t remove shot %s."

    const/4 v11, 0x0

    :try_start_0
    iget-object v1, v7, Lgmx;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lefl;

    iget-object v2, v8, Leea;->p:Lega;

    iget-object v2, v2, Lega;->b:Lefz;

    sget-object v3, Lefz;->c:Lefz;

    const/4 v13, 0x0

    if-ne v2, v3, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    sget-object v3, Lefz;->b:Lefz;

    if-eq v2, v3, :cond_2

    sget-object v3, Lefz;->a:Lefz;

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eqz v14, :cond_3

    iget-object v1, v9, Lgmw;->t:Lgkr;

    new-instance v2, Lgmv;

    invoke-direct {v2, v7, v1, v11, v11}, Lgmv;-><init>(Lgmx;Lgkr;[B[B)V

    move-object v15, v11

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_14

    iget-object v3, v9, Lgmw;->t:Lgkr;

    new-instance v15, Lgmu;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lgmu;-><init>(Lgmx;Lgkr;I[B[B)V
    :try_end_0
    .catch Ldnv; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ldog; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v11

    :goto_2
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lgmp;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v1, Lgmx;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v4, 0xc03

    invoke-interface {v3, v4}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const-string v4, "No payload frames found, aborting shot."

    invoke-interface {v3, v4}, Lnah;->o(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lgmp;->b()V

    invoke-static {v15, v2, v11}, Lgmx;->l(Lecu;Lecv;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ldnv; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ldog; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p2 .. p2}, Lgmp;->g()V

    iget-object v2, v7, Lgmx;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgmw;

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0xc04

    :goto_3
    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    move-result v2

    invoke-interface {v1, v10, v2}, Lnah;->p(Ljava/lang/String;I)V

    :cond_4
    return-void

    :cond_5
    :try_start_2
    iget-object v3, v8, Leea;->o:Lkou;

    iget-object v4, v7, Lgmx;->d:Lgue;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkeb;

    invoke-virtual {v4, v5}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v4

    invoke-virtual {v4}, Lgli;->b()Lkfj;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v4}, Lkfj;->c()Lkll;

    move-result-object v5

    iget-object v5, v5, Lkll;->a:Ljava/lang/String;

    invoke-static {v3, v5}, Lgmq;->b(Lkou;Ljava/lang/String;)Lkou;

    move-result-object v3

    invoke-interface {v4}, Lkfj;->c()Lkll;

    move-result-object v4

    move-object/from16 v17, v4

    goto :goto_5

    :cond_6
    move-object v3, v1

    check-cast v3, Lmvv;

    invoke-virtual {v3}, Lmvv;->s()Lnad;

    move-result-object v3

    move-object v4, v11

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkeb;

    iget-object v5, v7, Lgmx;->d:Lgue;

    invoke-virtual {v5, v4}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v4

    invoke-static {v4, v13}, Lgmq;->a(Lgli;Z)Lkou;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lgli;->b()Lkfj;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Lkfj;->c()Lkll;

    move-result-object v4

    move-object/from16 v17, v4

    move-object v3, v5

    goto :goto_5

    :cond_7
    move-object v4, v5

    goto :goto_4

    :cond_8
    move-object v3, v4

    move-object/from16 v17, v11

    :goto_5
    if-nez v3, :cond_a

    invoke-static {v15, v2, v11}, Lgmx;->l(Lecu;Lecv;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ldnv; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ldog; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p2 .. p2}, Lgmp;->g()V

    iget-object v1, v7, Lgmx;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgmw;

    if-nez v1, :cond_9

    sget-object v1, Lgmx;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0xc01

    goto/16 :goto_3

    :cond_9
    return-void

    :cond_a
    :try_start_3
    iget-object v4, v9, Lgmw;->l:Lnph;

    invoke-virtual {v4}, Lnph;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    iget-object v5, v7, Lgmx;->m:Lcvr;

    iget-object v6, v8, Leea;->v:Lgkr;

    iget-object v6, v6, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v6}, Lgxl;->h()Lgxy;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcvr;->K(Lgxy;)Leeb;

    move-result-object v5

    if-eqz v2, :cond_b

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    invoke-virtual {v5, v2}, Leeb;->e(Lecv;)V

    goto :goto_6

    :cond_b
    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    invoke-virtual {v5, v15}, Leeb;->d(Lecu;)V

    :goto_6
    invoke-virtual/range {p2 .. p2}, Lgmp;->f()Ljava/util/List;

    move-result-object v5

    iget-object v6, v9, Lgmw;->a:Lnph;

    invoke-virtual {v6}, Lnph;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v6, v8, Leea;->p:Lega;

    iget-object v6, v6, Lega;->b:Lefz;

    sget-object v13, Lefz;->a:Lefz;

    const/16 v19, -0x1

    if-ne v6, v13, :cond_c

    if-ltz v4, :cond_c

    move-object v6, v5

    check-cast v6, Lmyu;

    iget v6, v6, Lmyu;->c:I

    if-lt v4, v6, :cond_d

    :cond_c
    sget-object v4, Lnfy;->a:Lnfy;

    const/4 v6, 0x0

    invoke-static {v6, v4}, Lj$/util/stream/IntStream$-CC;->iterate(ILjava/util/function/IntUnaryOperator;)Lj$/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Lj$/util/stream/IntStream;->boxed()Lj$/util/stream/Stream;

    move-result-object v4

    invoke-static {v5}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lnfw;

    invoke-direct {v6, v4, v5}, Lnfw;-><init>(Lj$/util/stream/Stream;Lj$/util/stream/Stream;)V

    sget-object v4, Lfjd;->j:Lfjd;

    invoke-virtual {v6, v4}, Lnfx;->c(Ljava/util/function/Predicate;)Lnfx;

    move-result-object v4

    new-instance v5, Lgmt;

    invoke-direct {v5, v11, v12}, Lgmt;-><init>(J)V

    new-instance v6, Lnfi;

    invoke-direct {v6, v5}, Lnfi;-><init>(Ljava/util/function/ToLongBiFunction;)V

    const/4 v5, 0x0

    new-array v11, v5, [Lnfk;

    check-cast v4, Lnfq;

    iget-object v4, v4, Lnfq;->a:Lj$/util/stream/Stream;

    sget-object v5, Lnfo;->b:Lnfo;

    sget-object v11, Lnfo;->a:Lnfo;

    invoke-interface {v6, v5, v11}, Lnfk;->c(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v5

    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;

    move-result-object v4

    invoke-static {v4}, Lnfx;->d(Lj$/util/stream/Stream;)Lnfx;

    move-result-object v4

    new-instance v5, Lgfd;

    const/16 v6, 0x8

    invoke-direct {v5, v7, v6}, Lgfd;-><init>(Lgmx;I)V

    invoke-virtual {v4, v5}, Lnfx;->c(Ljava/util/function/Predicate;)Lnfx;

    move-result-object v4

    sget-object v5, Liew;->e:Liew;

    invoke-virtual {v4, v5}, Lnfx;->b(Ljava/util/function/BiFunction;)Lj$/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v4

    invoke-static {}, Lj$/util/function/Function$-CC;->identity()Ljava/util/function/Function;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v4

    sget-object v5, Lifp;->u:Lifp;

    invoke-virtual {v4, v5}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v4

    sget-object v5, Lnfn;->a:Lnfn;

    invoke-virtual {v4, v5}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnfn;

    sget-object v5, Lezv;->b:Lezv;

    invoke-virtual {v4, v5}, Lnfn;->a(Ljava/util/function/BiFunction;)Lj$/util/Optional;

    move-result-object v4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_d
    if-ltz v4, :cond_e

    iget-object v5, v7, Lgmx;->h:Lefk;

    invoke-virtual/range {p2 .. p2}, Lgmp;->f()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkeb;

    invoke-interface {v5, v6}, Lefk;->a(Lkeb;)Lmqp;

    move-result-object v5

    goto :goto_7

    :cond_e
    sget-object v5, Lmpx;->a:Lmpx;

    :goto_7
    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    iget-object v6, v9, Lgmw;->t:Lgkr;

    new-instance v11, Lgkr;

    iget-object v12, v6, Lgkr;->d:Ljava/lang/Object;

    new-instance v13, Lftd;

    check-cast v12, Lfte;

    invoke-direct {v13, v12}, Lftd;-><init>(Lfte;)V

    iput-object v5, v13, Lftd;->c:Lmqp;

    invoke-virtual {v13}, Lftd;->a()Lfte;

    move-result-object v5

    iget-object v12, v6, Lgkr;->c:Ljava/lang/Object;

    iget-object v13, v6, Lgkr;->b:Ljava/lang/Object;

    iget-object v6, v6, Lgkr;->a:Ljava/lang/Object;

    invoke-direct {v11, v5, v12, v13, v6}, Lgkr;-><init>(Lfte;Lgxl;Lfzz;Lgaa;)V

    sget-object v5, Lmpx;->a:Lmpx;

    if-eqz v14, :cond_f

    iget-object v6, v7, Lgmx;->l:Lcvr;

    invoke-virtual {v6}, Lcvr;->H()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v5, v9, Lgmw;->b:Lnph;

    invoke-virtual {v5}, Lnph;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lecc;

    invoke-static {v5}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v5

    goto :goto_8

    :cond_f
    :goto_8
    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual/range {v24 .. v24}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lecc;

    iget v5, v5, Lecc;->b:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v5

    goto :goto_9

    :cond_10
    sget-object v5, Lmpx;->a:Lmpx;

    :goto_9
    iget-object v6, v8, Leea;->p:Lega;

    iget-object v6, v6, Lega;->b:Lefz;

    iget-boolean v12, v7, Lgmx;->i:Z

    if-eqz v12, :cond_13

    sget-object v12, Lefz;->c:Lefz;

    invoke-virtual {v6, v12}, Lefz;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    move-object v6, v1

    check-cast v6, Lmyu;

    iget v6, v6, Lmyu;->c:I

    const/4 v12, 0x3

    if-le v6, v12, :cond_13

    invoke-virtual {v5}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, v7, Lgmx;->j:Lnsc;

    invoke-virtual {v6, v3}, Lnsc;->q(Lkou;)[F

    move-result-object v6

    invoke-virtual {v5}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v12, 0x0

    aget v13, v6, v12

    div-float/2addr v5, v13

    const/4 v13, 0x1

    aget v6, v6, v13

    div-float/2addr v5, v6

    const/high16 v6, 0x41200000    # 10.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_13

    if-nez v4, :cond_11

    const/4 v4, 0x0

    const/4 v13, 0x0

    goto :goto_a

    :cond_11
    move-object v5, v1

    check-cast v5, Lmyu;

    iget v5, v5, Lmyu;->c:I

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_12

    add-int/lit8 v13, v4, -0x2

    goto :goto_a

    :cond_12
    add-int/lit8 v13, v4, -0x1

    :goto_a
    add-int/lit8 v5, v13, 0x3

    check-cast v1, Lmvv;

    invoke-virtual {v1, v13, v5}, Lmvv;->b(II)Lmvv;

    move-result-object v1

    sub-int/2addr v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lmqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lmqq;

    move-result-object v1

    goto :goto_b

    :cond_13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lmqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lmqq;

    move-result-object v1

    :goto_b
    iget-object v4, v7, Lgmx;->g:Logd;

    invoke-interface {v4}, Logd;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Lgms;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lmqq;->a:Ljava/lang/Object;

    move-object/from16 v18, v4

    check-cast v18, Ljava/util/List;

    sget-object v19, Lgjn;->d:Lgjn;

    iget-object v1, v1, Lmqq;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v21

    iget-object v1, v9, Lgmw;->s:Lebb;

    move-object/from16 v20, v11

    move-object/from16 v22, v3

    move-object/from16 v23, v1

    invoke-interface/range {v16 .. v24}, Lgms;->a(Lkll;Ljava/util/List;Lgal;Lgkr;ILkou;Lebb;Lmqp;)V
    :try_end_3
    .catch Ldnv; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ldog; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p2 .. p2}, Lgmp;->g()V

    iget-object v1, v7, Lgmx;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgmw;

    if-nez v1, :cond_18

    sget-object v1, Lgmx;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0xbfc

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    :goto_c
    move-object v1, v0

    move-object v11, v15

    goto :goto_e

    :catch_4
    move-exception v0

    goto :goto_f

    :cond_14
    :try_start_4
    sget-object v1, Lgmx;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v3, 0xbf1

    invoke-interface {v2, v3}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const-string v3, "Aborting secondary shot!!"

    invoke-interface {v2, v3}, Lnah;->o(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lgmp;->b()V
    :try_end_4
    .catch Ldnv; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ldog; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual/range {p2 .. p2}, Lgmp;->g()V

    iget-object v2, v7, Lgmx;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgmw;

    if-nez v2, :cond_15

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0xbf2

    goto/16 :goto_3

    :cond_15
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_10

    :catch_5
    move-exception v0

    goto :goto_d

    :catch_6
    move-exception v0

    goto :goto_d

    :catch_7
    move-exception v0

    goto :goto_d

    :catch_8
    move-exception v0

    :goto_d
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_e
    :try_start_5
    instance-of v3, v1, Ljava/lang/InterruptedException;

    if-eqz v3, :cond_16

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_16
    invoke-static {v11, v2, v1}, Lgmx;->l(Lecu;Lecv;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual/range {p2 .. p2}, Lgmp;->g()V

    iget-object v1, v7, Lgmx;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgmw;

    if-nez v1, :cond_18

    sget-object v1, Lgmx;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0xbf7

    goto/16 :goto_3

    :catch_9
    move-exception v0

    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_f
    :try_start_6
    sget-object v1, Lgmx;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v4, 0xbf3

    invoke-interface {v3, v4}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const-string v4, "Secondary shot didn\'t proceed."

    invoke-interface {v3, v4}, Lnah;->o(Ljava/lang/String;)V

    iget-object v3, v8, Leea;->p:Lega;

    iget-object v3, v3, Lega;->b:Lefz;

    sget-object v4, Lefz;->a:Lefz;

    if-eq v3, v4, :cond_17

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v4, 0xbf5

    invoke-interface {v3, v4}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const-string v4, "Notifying error."

    invoke-interface {v3, v4}, Lnah;->o(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v15, v2, v3}, Lgmx;->l(Lecu;Lecv;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_17
    invoke-virtual/range {p2 .. p2}, Lgmp;->g()V

    iget-object v2, v7, Lgmx;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgmw;

    if-nez v2, :cond_18

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0xbf4

    goto/16 :goto_3

    :cond_18
    return-void

    :goto_10
    invoke-virtual/range {p2 .. p2}, Lgmp;->g()V

    iget-object v2, v7, Lgmx;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgmw;

    if-nez v2, :cond_19

    sget-object v2, Lgmx;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v3, 0xbf6

    invoke-interface {v2, v3}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    move-result v3

    invoke-interface {v2, v10, v3}, Lnah;->p(Ljava/lang/String;I)V

    :cond_19
    goto :goto_12

    :goto_11
    throw v1

    :goto_12
    goto :goto_11
.end method

.method public final declared-synchronized p(Leea;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p1, p1, Leea;->v:Lgkr;

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->h()Lgxy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgmx;->d(Lgxy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
