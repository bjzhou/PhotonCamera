.class public final Ldec;
.super Ljava/lang/Object;

# interfaces
.implements Lhdy;
.implements Lhcu;
.implements Lddw;
.implements Ldem;


# instance fields
.field public final A:Lddj;

.field public final B:Lddp;

.field public final C:Lhnb;

.field public final D:J

.field public E:Lmqp;

.field public F:J

.field public G:Lhmz;

.field public final H:Lcvr;

.field private final I:Ljava/util/concurrent/Executor;

.field private final J:Ldhi;

.field public a:Lkad;

.field public final b:Lddx;

.field public final c:Ldga;

.field public final d:Ldft;

.field public final e:Ljava/util/Map;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public final j:Ljuf;

.field public final k:Ljava/util/concurrent/Executor;

.field public l:Lhec;

.field public m:Lmqp;

.field public n:Lmqp;

.field public final o:Ljuh;

.field public final p:Lflf;

.field public final q:Lhzh;

.field public final r:Loiw;

.field public final s:Lhcv;

.field public final t:Lgft;

.field public final u:Ljvs;

.field public v:Z

.field public final w:Ljava/util/concurrent/ScheduledExecutorService;

.field public final x:Lckd;

.field public final y:Lhna;

.field public final z:Lden;


# direct methods
.method public constructor <init>(Lddx;Lkbi;Ljuh;Lflf;Lhzh;Loiw;Lhcv;Lgft;Ljvs;Ldga;Ldft;Ldhi;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Lcvr;Lckd;Lddp;Lhnb;Lhna;Lden;Lddj;[B[B)V
    .locals 6

    move-object v0, p0

    move-object/from16 v1, p12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcgk;->j:Lcgk;

    iput-object v2, v0, Ldec;->a:Lkad;

    new-instance v2, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v0, Ldec;->e:Ljava/util/Map;

    sget-object v2, Lmpx;->a:Lmpx;

    iput-object v2, v0, Ldec;->m:Lmqp;

    iput-object v2, v0, Ldec;->n:Lmqp;

    iput-object v2, v0, Ldec;->E:Lmqp;

    move-object v2, p1

    iput-object v2, v0, Ldec;->b:Lddx;

    move-object/from16 v2, p10

    iput-object v2, v0, Ldec;->c:Ldga;

    move-object/from16 v2, p11

    iput-object v2, v0, Ldec;->d:Ldft;

    move-object v2, p2

    iput-object v2, v0, Ldec;->k:Ljava/util/concurrent/Executor;

    move-object v2, p3

    iput-object v2, v0, Ldec;->o:Ljuh;

    move-object v2, p4

    iput-object v2, v0, Ldec;->p:Lflf;

    move-object v2, p5

    iput-object v2, v0, Ldec;->q:Lhzh;

    move-object v2, p6

    iput-object v2, v0, Ldec;->r:Loiw;

    move-object v2, p7

    iput-object v2, v0, Ldec;->s:Lhcv;

    move-object v2, p8

    iput-object v2, v0, Ldec;->t:Lgft;

    move-object v2, p9

    iput-object v2, v0, Ldec;->u:Ljvs;

    invoke-interface {p9}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Ldec;->v:Z

    move-object/from16 v2, p14

    iput-object v2, v0, Ldec;->I:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Ldec;->J:Ldhi;

    move-object/from16 v2, p13

    iput-object v2, v0, Ldec;->w:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v2, p15

    iput-object v2, v0, Ldec;->H:Lcvr;

    move-object/from16 v2, p17

    iput-object v2, v0, Ldec;->B:Lddp;

    move-object/from16 v2, p18

    iput-object v2, v0, Ldec;->C:Lhnb;

    move-object/from16 v2, p16

    iput-object v2, v0, Ldec;->x:Lckd;

    move-object/from16 v2, p19

    iput-object v2, v0, Ldec;->y:Lhna;

    move-object/from16 v2, p20

    iput-object v2, v0, Ldec;->z:Lden;

    move-object/from16 v2, p21

    iput-object v2, v0, Ldec;->A:Lddj;

    new-instance v2, Ljuf;

    invoke-direct {v2}, Ljuf;-><init>()V

    iput-object v2, v0, Ldec;->j:Ljuf;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v4, Ldht;->d:Ldhk;

    invoke-interface {v1, v4}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, v0, Ldec;->D:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Ldec;->k:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ldec;->j:Ljuf;

    new-instance v2, Lczl;

    const/16 v3, 0xa

    invoke-direct {v2, v1, v3}, Lczl;-><init>(Ljuf;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lhec;)V
    .locals 3

    iget-object v0, p0, Ldec;->k:Ljava/util/concurrent/Executor;

    new-instance v1, Lcue;

    const/16 v2, 0xf

    invoke-direct {v1, p0, p1, v2}, Lcue;-><init>(Ldec;Lhec;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(J)V
    .locals 1

    iget-object v0, p0, Ldec;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkpb;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkpb;->close()V

    :cond_0
    return-void
.end method

.method public final d(Ldef;)V
    .locals 3

    iget-object v0, p0, Ldec;->k:Ljava/util/concurrent/Executor;

    new-instance v1, Lcue;

    const/16 v2, 0xe

    invoke-direct {v1, p0, p1, v2}, Lcue;-><init>(Ldec;Ldef;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Lddo;)Lheb;
    .locals 3

    invoke-static {}, Lheb;->a()Lhea;

    move-result-object v0

    iget-object v1, p1, Lddo;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iput-object v1, v0, Lhea;->a:Ljava/lang/String;

    :cond_0
    iget-object v1, p1, Lddo;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iput-object v1, v0, Lhea;->b:Landroid/graphics/drawable/Drawable;

    :cond_1
    new-instance v1, Lcue;

    const/16 v2, 0x11

    invoke-direct {v1, p0, p1, v2}, Lcue;-><init>(Ldec;Lddo;I)V

    iput-object v1, v0, Lhea;->c:Ljava/lang/Runnable;

    new-instance v1, Lcue;

    const/16 v2, 0x12

    invoke-direct {v1, p0, p1, v2}, Lcue;-><init>(Ldec;Lddo;I)V

    iput-object v1, v0, Lhea;->g:Ljava/lang/Runnable;

    new-instance v1, Lczl;

    invoke-direct {v1, p1, v2}, Lczl;-><init>(Lddo;I)V

    iput-object v1, v0, Lhea;->h:Ljava/lang/Runnable;

    invoke-virtual {v0}, Lhea;->a()Lheb;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lddo;)V
    .locals 7

    iget v0, p1, Lddo;->k:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ldec;->n:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldec;->n:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lddo;

    iget-wide v0, v0, Lddo;->a:J

    iget-wide v2, p1, Lddo;->a:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Ldec;->n:Lmqp;

    iget-object p1, p0, Ldec;->l:Lhec;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lhec;->a()V

    :cond_0
    return-void

    :cond_1
    iget v2, p1, Lddo;->l:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    if-eq v0, v3, :cond_5

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Ldec;->A:Lddj;

    monitor-enter v0

    :try_start_0
    iget-object v3, v0, Lddj;->a:Lnph;

    if-nez v3, :cond_2

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v3

    iput-object v3, v0, Lddj;->a:Lnph;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lddj;->a:Lnph;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    iget-object v2, v0, Lddj;->b:Lhzh;

    invoke-virtual {v2}, Lhzh;->d()Lnou;

    move-result-object v2

    sget-object v4, Lcfv;->u:Lcfv;

    sget-object v5, Lnnv;->a:Lnnv;

    invoke-static {v2, v4, v5}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v2

    const-class v4, Ljava/lang/Throwable;

    sget-object v5, Ldeo;->b:Ldeo;

    sget-object v6, Lnnv;->a:Lnnv;

    invoke-static {v2, v4, v5, v6}, Lnml;->i(Lnou;Ljava/lang/Class;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v2

    new-instance v4, Lcig;

    const/4 v5, 0x6

    invoke-direct {v4, v0, v5}, Lcig;-><init>(Lddj;I)V

    invoke-static {v2, v4}, Ljvd;->s(Lnou;Ljzs;)V

    :cond_3
    new-instance v0, Lccq;

    invoke-direct {v0, p0, p1, v1}, Lccq;-><init>(Ldec;Lddo;I)V

    iget-object p1, p0, Ldec;->k:Ljava/util/concurrent/Executor;

    invoke-static {v3, v0, p1}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0, p1}, Ldec;->j(Lddo;)V

    return-void

    :cond_6
    invoke-virtual {p0, p1}, Ldec;->j(Lddo;)V

    return-void
.end method

.method public final g(Lkli;)V
    .locals 1

    new-instance v0, Loxq;

    invoke-interface {p1}, Lkli;->f()I

    move-result p1

    invoke-direct {v0, p1}, Loxq;-><init>(I)V

    iget-object p1, p0, Ldec;->b:Lddx;

    invoke-interface {p1, v0}, Lddx;->j(Loxq;)V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Ldec;->E:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldec;->E:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Ldec;->a:Lkad;

    invoke-interface {v0}, Lkad;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldec;->G:Lhmz;

    iget-boolean v0, p0, Ldec;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldec;->b:Lddx;

    invoke-interface {v0}, Lddx;->f()V

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Ldec;->n:Lmqp;

    iput-object v0, p0, Ldec;->m:Lmqp;

    iput-boolean v1, p0, Ldec;->f:Z

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 3

    iget-boolean v0, p0, Ldec;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldec;->v:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldec;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldec;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldec;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldec;->b:Lddx;

    invoke-interface {v0}, Lddx;->d()V

    iget-object v0, p0, Ldec;->I:Ljava/util/concurrent/Executor;

    new-instance v1, Lczl;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2}, Lczl;-><init>(Ldec;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldec;->f:Z

    :cond_0
    return-void
.end method

.method public final j(Lddo;)V
    .locals 6

    invoke-virtual {p0, p1}, Ldec;->e(Lddo;)Lheb;

    move-result-object v0

    iget-object v1, p0, Ldec;->n:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ldec;->n:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lddo;

    iget-wide v1, v1, Lddo;->a:J

    iget-wide v3, p1, Lddo;->a:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldec;->l:Lhec;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lhec;->c(Lheb;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Ldec;->n:Lmqp;

    iget-object p1, p0, Ldec;->J:Ldhi;

    sget-object v1, Ldht;->a:[Ljava/lang/String;

    invoke-interface {p1}, Ldhi;->e()V

    invoke-virtual {p0, v0}, Ldec;->k(Lheb;)V

    return-void
.end method

.method public final k(Lheb;)V
    .locals 1

    iget-object v0, p0, Ldec;->l:Lhec;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lhec;->a()V

    iget-object v0, p0, Ldec;->l:Lhec;

    invoke-interface {v0, p1}, Lhec;->b(Lheb;)V

    :cond_0
    return-void
.end method

.method public final l(Lkpb;)V
    .locals 3

    iget-object v0, p0, Ldec;->k:Ljava/util/concurrent/Executor;

    new-instance v1, Lcue;

    const/16 v2, 0xd

    invoke-direct {v1, p0, p1, v2}, Lcue;-><init>(Ldec;Lkpb;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m()V
    .locals 0

    return-void
.end method

.method public final v()V
    .locals 3

    iget-object v0, p0, Ldec;->k:Ljava/util/concurrent/Executor;

    new-instance v1, Lczl;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Lczl;-><init>(Ldec;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w()V
    .locals 3

    iget-object v0, p0, Ldec;->k:Ljava/util/concurrent/Executor;

    new-instance v1, Lczl;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lczl;-><init>(Ldec;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
