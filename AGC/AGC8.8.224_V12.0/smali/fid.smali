.class public final Lfid;
.super Ljava/lang/Object;

# interfaces
.implements Lfhz;


# static fields
.field private static final u:Lnak;


# instance fields
.field private final A:Ljava/util/concurrent/atomic/AtomicLong;

.field private final B:Ljava/util/concurrent/atomic/AtomicLong;

.field private final C:Ljava/util/concurrent/atomic/AtomicLong;

.field private final D:Ljava/util/concurrent/atomic/AtomicLong;

.field private final E:Ljava/util/concurrent/atomic/AtomicLong;

.field private final F:Ljava/util/concurrent/atomic/AtomicLong;

.field private final G:Ljava/util/concurrent/atomic/AtomicLong;

.field private final H:Ljava/util/concurrent/atomic/AtomicLong;

.field private I:Ldzr;

.field private final J:Ljava/util/concurrent/atomic/AtomicInteger;

.field private K:J

.field private L:Ljava/util/List;

.field private final M:Lkte;

.field public final a:Lfgg;

.field public final b:Lfhy;

.field public final c:Lfhm;

.field public final d:Landroid/os/Handler;

.field public final e:Landroid/os/Handler;

.field public final f:Lmqp;

.field public final g:Lfhl;

.field public volatile h:Z

.field public final i:Ljava/util/concurrent/atomic/AtomicLong;

.field public final j:Ljava/util/concurrent/atomic/AtomicLong;

.field public final k:Ljava/util/concurrent/atomic/AtomicLong;

.field public final l:Ljava/util/concurrent/atomic/AtomicLong;

.field public final m:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final o:Llbd;

.field public p:Llck;

.field public q:Lldh;

.field public r:Z

.field public s:Z

.field public final t:Lguf;

.field private final v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final w:Lmqp;

.field private final x:Llau;

.field private y:Lfhd;

.field private volatile z:Lfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/microvideo/encoder/VideoTrackSamplerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfid;->u:Lnak;

    return-void
.end method

.method public constructor <init>(Lbkc;Lfgg;Lfhy;Lfhl;Lfhm;Lmqp;Lfij;Ldhi;[B[B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 p10, 0x2dc6c0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p9, p10, p11, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p9

    long-to-int p10, p9

    mul-int/lit8 p10, p10, 0x3c

    invoke-static {p10}, Linb;->J(I)Lkte;

    move-result-object p9

    iput-object p9, p0, Lfid;->M:Lkte;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p10, 0x0

    invoke-direct {p9, p10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p9, p0, Lfid;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Llau;->b()Llau;

    move-result-object p9

    iput-object p9, p0, Lfid;->x:Llau;

    iput-boolean p10, p0, Lfid;->h:Z

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p9, p0, Lfid;->A:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p9, p0, Lfid;->B:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p9, p0, Lfid;->i:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p9, p0, Lfid;->j:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p9, p0, Lfid;->k:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p9, p0, Lfid;->C:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p9, p0, Lfid;->D:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p9, p0, Lfid;->E:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p9, p0, Lfid;->F:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p9, p0, Lfid;->l:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p9, p0, Lfid;->G:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p9, p0, Lfid;->H:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p9, p0, Lfid;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p9, p0, Lfid;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p9, p0, Lfid;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean p10, p0, Lfid;->r:Z

    iput-boolean p10, p0, Lfid;->s:Z

    const-wide/16 p9, 0x0

    iput-wide p9, p0, Lfid;->K:J

    new-instance p9, Ljava/util/ArrayList;

    invoke-direct {p9}, Ljava/util/ArrayList;-><init>()V

    iput-object p9, p0, Lfid;->L:Ljava/util/List;

    sget-object p9, Ldhv;->a:Ldhk;

    invoke-interface {p8}, Ldhi;->e()V

    iput-object p2, p0, Lfid;->a:Lfgg;

    iput-object p3, p0, Lfid;->b:Lfhy;

    iput-object p4, p0, Lfid;->g:Lfhl;

    iput-object p5, p0, Lfid;->c:Lfhm;

    new-instance p2, Ljuf;

    invoke-direct {p2}, Ljuf;-><init>()V

    const-string p3, "mv-vid-encode"

    invoke-static {p2, p3}, Ljvd;->p(Ljuf;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lfid;->e:Landroid/os/Handler;

    new-instance p2, Ljuf;

    invoke-direct {p2}, Ljuf;-><init>()V

    const-string p3, "mv-vid-update"

    invoke-static {p2, p3}, Ljvd;->p(Ljuf;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lfid;->d:Landroid/os/Handler;

    iput-object p6, p0, Lfid;->f:Lmqp;

    invoke-interface {p8}, Ldhi;->c()V

    const-string p2, "stabilized-vid-track"

    invoke-virtual {p1, p2}, Lbkc;->r(Ljava/lang/String;)Llbd;

    move-result-object p1

    iput-object p1, p0, Lfid;->o:Llbd;

    new-instance p2, Lguf;

    invoke-interface {p8}, Ldhi;->c()V

    invoke-interface {p4}, Lfhl;->a()I

    move-result p3

    const/4 p4, 0x1

    invoke-direct {p2, p1, p3, p4}, Lguf;-><init>(Llbd;II)V

    iput-object p2, p0, Lfid;->t:Lguf;

    new-instance p2, Ldzr;

    invoke-direct {p2, p1, p4}, Ldzr;-><init>(Llbd;I)V

    iput-object p2, p0, Lfid;->I:Ldzr;

    invoke-virtual {p2}, Ldzr;->a()Llck;

    move-result-object p1

    iput-object p1, p0, Lfid;->p:Llck;

    iget-object p1, p0, Lfid;->I:Ldzr;

    invoke-static {}, Llau;->b()Llau;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ldzr;->b(Ljava/util/List;)Lldh;

    move-result-object p1

    iput-object p1, p0, Lfid;->q:Lldh;

    iget-object p1, p7, Lfij;->b:Lgvb;

    iget-object p2, p7, Lfij;->c:Lkli;

    invoke-interface {p2}, Lkli;->k()Lklv;

    move-result-object p2

    invoke-interface {p1, p2}, Lgvb;->h(Lklv;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lmpx;->a:Lmpx;

    goto :goto_0

    :cond_0
    sget-object p1, Lfij;->a:Llau;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lfid;->w:Lmqp;

    invoke-interface {p8}, Ldhi;->c()V

    sget-object p1, Ldho;->a:Ldhk;

    invoke-interface {p8}, Ldhi;->f()V

    return-void
.end method

.method private final i(J)Lfhc;
    .locals 4

    iget-object v0, p0, Lfid;->M:Lkte;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfid;->M:Lkte;

    invoke-virtual {v1, p1, p2}, Lkte;->i(J)Lkad;

    move-result-object v1

    check-cast v1, Lfhc;

    if-nez v1, :cond_0

    new-instance v1, Lfhc;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v2

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v3

    invoke-direct {v1, p1, p2, v2, v3}, Lfhc;-><init>(JLnph;Lnph;)V

    iget-object v2, p0, Lfid;->M:Lkte;

    invoke-virtual {v2, p1, p2, v1}, Lkte;->m(JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final j()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfid;->s:Z

    iget-object v1, p0, Lfid;->c:Lfhm;

    invoke-virtual {v1, v0}, Lfhm;->b(Z)V

    invoke-virtual {p0}, Lfid;->h()V

    iget-object v0, p0, Lfid;->A:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lfid;->B:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lfid;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lfid;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lfid;->C:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lfid;->E:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lfid;->F:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lfid;->i(J)Lfhc;

    move-result-object p1

    iget-object p1, p1, Lfhc;->b:Lnph;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lnph;->cancel(Z)Z

    iget-object p1, p0, Lfid;->d:Landroid/os/Handler;

    new-instance p2, Lfcz;

    const/16 v0, 0x13

    invoke-direct {p2, p0, v0}, Lfcz;-><init>(Lfid;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(JLjava/util/List;)V
    .locals 1

    iget-boolean v0, p0, Lfid;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lfid;->i(J)Lfhc;

    move-result-object p1

    iget-object p1, p1, Lfhc;->b:Lnph;

    invoke-virtual {p1, p3}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object p1, p0, Lfid;->d:Landroid/os/Handler;

    new-instance p2, Lfcz;

    const/16 p3, 0x13

    invoke-direct {p2, p0, p3}, Lfcz;-><init>(Lfid;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final declared-synchronized c(Lkxy;Lfhd;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lfid;->y:Lfhd;

    iget-object v0, p0, Lfid;->g:Lfhl;

    iget-object v1, p0, Lfid;->o:Llbd;

    new-instance v2, Lfic;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lfic;-><init>(Lfid;Lfhd;I)V

    iget-object p2, p0, Lfid;->e:Landroid/os/Handler;

    invoke-interface {v0, p1, v1, v2, p2}, Lfhl;->c(Lkxy;Llbd;Llel;Landroid/os/Handler;)V

    iget-object p1, p0, Lfid;->c:Lfhm;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lfhm;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lfid;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lfid;->u:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Trying to close after handler shutdown"

    const/16 v2, 0x90b

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lfid;->a:Lfgg;

    iget-wide v1, p0, Lfid;->K:J

    invoke-interface {v0, v1, v2}, Lfgg;->f(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lfid;->f:Lmqp;

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lfid;->f:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfgy;

    invoke-interface {v3, v1, v2}, Lfgy;->b(J)V

    :cond_1
    invoke-virtual {p0}, Lfid;->d()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lfid;->d:Landroid/os/Handler;

    new-instance v1, Lfcz;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Lfcz;-><init>(Lfid;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final d()V
    .locals 3

    iget-boolean v0, p0, Lfid;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfid;->d:Landroid/os/Handler;

    new-instance v1, Lfcz;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Lfcz;-><init>(Lfid;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e()V
    .locals 3

    iget-boolean v0, p0, Lfid;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lfid;->u:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Trying to start after handler shutdown"

    const/16 v2, 0x914

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    iget-object v0, p0, Lfid;->d:Landroid/os/Handler;

    new-instance v1, Lfib;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lfib;-><init>(Lfid;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lfid;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lfid;->u:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Shutdown already called. Skipping additional requests."

    const/16 v2, 0x913

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lfid;->h()V

    iget-object v0, p0, Lfid;->g:Lfhl;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lfhl;->b()Lnou;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    :goto_0
    const-string v1, "VideoTrackSampler"

    invoke-static {v1, v0}, Lflb;->a(Ljava/lang/String;Lnou;)V

    new-instance v1, Lfcz;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2}, Lfcz;-><init>(Lfid;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-interface {v0, v1, v2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final g()V
    .locals 14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lfid;->d:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sget-object v0, Lfid;->u:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Sampling video on a non-video-encoder thread"

    const/16 v2, 0x915

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_0
    iget-object v0, p0, Lfid;->a:Lfgg;

    invoke-interface {v0}, Lfgg;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v2, p0, Lfid;->G:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_1
    iget-object v0, p0, Lfid;->y:Lfhd;

    iget-object v1, p0, Lfid;->g:Lfhl;

    invoke-interface {v1}, Lfhl;->d()Z

    move-result v1

    if-eqz v1, :cond_1a

    if-eqz v0, :cond_1a

    iget-boolean v1, p0, Lfid;->s:Z

    if-nez v1, :cond_2

    goto/16 :goto_d

    :cond_2
    iget-object v1, p0, Lfid;->a:Lfgg;

    iget-wide v2, p0, Lfid;->K:J

    invoke-interface {v1, v2, v3}, Lfgg;->b(J)Lkpb;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v4, p0, Lfid;->H:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-interface {v1}, Lkpb;->d()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_3
    :goto_0
    if-nez v1, :cond_5

    iget-boolean v0, p0, Lfid;->r:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lfid;->j()V

    invoke-virtual {p0}, Lfid;->f()V

    :cond_4
    return-void

    :cond_5
    invoke-interface {v1}, Lkpb;->d()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v4, v5, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    iget-object v8, p0, Lfid;->C:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-lez v12, :cond_6

    iget-object v8, p0, Lfid;->C:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    sub-long v8, v4, v8

    const-wide v10, 0x12a05f200L

    cmp-long v12, v8, v10

    if-gtz v12, :cond_6

    iget-object v8, p0, Lfid;->C:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    cmp-long v10, v4, v8

    if-gez v10, :cond_7

    :cond_6
    iget-object v8, p0, Lfid;->C:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-virtual {p0}, Lfid;->h()V

    :cond_7
    invoke-interface {v0, v6, v7}, Lfhd;->f(J)Loxq;

    move-result-object v0

    invoke-virtual {v0}, Loxq;->l()Z

    move-result v6

    const/16 v7, 0x13

    if-eqz v6, :cond_8

    iput-wide v4, p0, Lfid;->K:J

    iget-object v6, p0, Lfid;->d:Landroid/os/Handler;

    new-instance v8, Lfcz;

    invoke-direct {v8, p0, v7}, Lfcz;-><init>(Lfid;I)V

    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    invoke-direct {p0, v4, v5}, Lfid;->i(J)Lfhc;

    move-result-object v4

    iget-object v5, v4, Lfhc;->c:Lnph;

    invoke-virtual {v5, v0}, Lnph;->e(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Loxq;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v5, v4, Lfhc;->b:Lnph;

    invoke-virtual {v5}, Lnph;->isDone()Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x1

    goto :goto_1

    :cond_9
    const/4 v5, 0x0

    :goto_1
    iget-object v6, v4, Lfhc;->c:Lnph;

    invoke-virtual {v6}, Lnph;->isDone()Z

    move-result v6

    if-eqz v6, :cond_17

    if-nez v5, :cond_17

    iget-object v5, v4, Lfhc;->c:Lnph;

    invoke-virtual {v5}, Lnph;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_a

    goto/16 :goto_9

    :cond_a
    if-eqz v0, :cond_b

    iget-object v5, v4, Lfhc;->b:Lnph;

    invoke-virtual {v5}, Lnph;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v5, 0x1

    goto :goto_2

    :cond_b
    const/4 v5, 0x0

    :goto_2
    invoke-interface {v1}, Lkpb;->d()J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, v4, Lfhc;->c:Lnph;

    invoke-static {v6}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Loxq;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v11, v4, Lfhc;->a:J

    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    iget v10, v6, Loxq;->a:I

    and-int/2addr v10, v2

    if-eqz v10, :cond_16

    invoke-static {}, Lflb;->b()V

    if-nez v5, :cond_c

    iget-object v5, p0, Lfid;->w:Lmqp;

    invoke-virtual {v5}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lfid;->x:Llau;

    invoke-static {v5}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v5

    goto :goto_3

    :cond_c
    iget-object v5, v4, Lfhc;->b:Lnph;

    invoke-static {v5}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    :goto_3
    iput-object v5, p0, Lfid;->L:Ljava/util/List;

    iget-object v8, p0, Lfid;->w:Lmqp;

    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v8

    if-eqz v8, :cond_e

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v9, p0, Lfid;->w:Lmqp;

    invoke-virtual {v9}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Llau;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Llau;

    invoke-virtual {v10, v9}, Llau;->c(Llau;)Llau;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    move-object v5, v8

    :cond_e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, p0, Lfid;->I:Ldzr;

    if-eqz v9, :cond_f

    iget v9, v9, Ldzr;->b:I

    if-eq v9, v8, :cond_10

    :cond_f
    new-instance v9, Ldzr;

    iget-object v10, p0, Lfid;->o:Llbd;

    invoke-direct {v9, v10, v8}, Ldzr;-><init>(Llbd;I)V

    iput-object v9, p0, Lfid;->I:Ldzr;

    iget-object v8, p0, Lfid;->p:Llck;

    invoke-virtual {v8}, Llck;->close()V

    iget-object v8, p0, Lfid;->I:Ldzr;

    invoke-virtual {v8}, Ldzr;->a()Llck;

    move-result-object v8

    iput-object v8, p0, Lfid;->p:Llck;

    :cond_10
    iget-object v8, p0, Lfid;->q:Lldh;

    invoke-virtual {v8}, Lldh;->close()V

    iget-object v8, p0, Lfid;->I:Ldzr;

    invoke-virtual {v8, v5}, Ldzr;->b(Ljava/util/List;)Lldh;

    move-result-object v5

    iput-object v5, p0, Lfid;->q:Lldh;

    :cond_11
    iget-object v5, p0, Lfid;->J:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-interface {v1}, Lkpb;->d()J

    move-result-wide v8

    iget-object v5, p0, Lfid;->b:Lfhy;

    if-eqz v5, :cond_13

    if-eqz v0, :cond_12

    iget-object v10, p0, Lfid;->L:Ljava/util/List;

    invoke-interface {v5, v8, v9, v10}, Lfhy;->d(JLjava/util/List;)V

    iget-object v5, p0, Lfid;->E:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_5

    :cond_12
    invoke-interface {v5, v8, v9}, Lfhy;->c(J)V

    iget-object v5, p0, Lfid;->F:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    :cond_13
    :goto_5
    iget-wide v4, v4, Lfhc;->a:J

    iput-wide v4, p0, Lfid;->K:J

    if-nez v0, :cond_15

    iget-object v0, p0, Lfid;->w:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_6

    :cond_14
    iget-object v0, p0, Lfid;->g:Lfhl;

    invoke-interface {v0, v1}, Lfhl;->f(Lkpb;)V

    goto :goto_7

    :cond_15
    :goto_6
    iget-object v0, p0, Lfid;->g:Lfhl;

    new-instance v4, Lfia;

    invoke-direct {v4, p0, v3}, Lfia;-><init>(Lfid;I)V

    invoke-interface {v0, v1, v4}, Lfhl;->g(Lkpb;Lfhk;)V

    :goto_7
    iget-object v0, p0, Lfid;->B:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v0, p0, Lfid;->d:Landroid/os/Handler;

    new-instance v4, Lfcz;

    invoke-direct {v4, p0, v7}, Lfcz;-><init>(Lfid;I)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :cond_16
    iget-object v0, p0, Lfid;->A:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v0, p0, Lfid;->D:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :goto_8
    invoke-virtual {v6}, Loxq;->m()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lfid;->j()V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_a

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Future expected to be in done state but was not."

    invoke-direct {v4, v5, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_17
    :goto_9
    iget-boolean v0, p0, Lfid;->r:Z

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lfid;->j()V

    invoke-virtual {p0}, Lfid;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_18
    :goto_a
    invoke-interface {v1}, Lkpb;->close()V

    return-void

    :goto_b
    if-eqz v1, :cond_19

    :try_start_3
    invoke-interface {v1}, Lkpb;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v1

    :try_start_4
    const-class v4, Ljava/lang/Throwable;

    const-string v5, "addSuppressed"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Throwable;

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {v4, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_c

    :catch_1
    move-exception v1

    :cond_19
    :goto_c
    throw v0

    :cond_1a
    :goto_d
    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lfid;->A:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object v0, p0, Lfid;->B:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object v0, p0, Lfid;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object v0, p0, Lfid;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object v0, p0, Lfid;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object v0, p0, Lfid;->E:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object v0, p0, Lfid;->F:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object v0, p0, Lfid;->G:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object v0, p0, Lfid;->H:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object v0, p0, Lfid;->D:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object v0, p0, Lfid;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    return-void
.end method
