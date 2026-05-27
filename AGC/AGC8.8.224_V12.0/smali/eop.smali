.class public final Leop;
.super Ljava/lang/Object;

# interfaces
.implements Lkee;
.implements Leqb;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Leqc;

.field public final c:Lnsc;

.field public final d:Lkbc;

.field public final e:Ljava/util/HashMap;

.field public f:Lept;

.field public g:Z

.field public final h:Lgue;

.field private final i:Lcvr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/lasagna/MotionBlurBufferListener"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Leop;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lgue;Lnsc;Lmqp;Ljuf;Lcvr;Lkef;Ldhi;Lkbc;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p9, Ljava/util/HashMap;

    invoke-direct {p9}, Ljava/util/HashMap;-><init>()V

    iput-object p9, p0, Leop;->e:Ljava/util/HashMap;

    const/4 p9, 0x0

    iput-object p9, p0, Leop;->f:Lept;

    const/4 p9, 0x0

    iput-boolean p9, p0, Leop;->g:Z

    iput-object p1, p0, Leop;->h:Lgue;

    iput-object p2, p0, Leop;->c:Lnsc;

    invoke-virtual {p3}, Lmqp;->g()Z

    move-result p1

    invoke-static {p1}, Lmoz;->e(Z)V

    invoke-virtual {p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leqc;

    iput-object p1, p0, Leop;->b:Leqc;

    iput-object p5, p0, Leop;->i:Lcvr;

    invoke-interface {p1, p0}, Leqc;->h(Leqb;)V

    sget-object p1, Ldhx;->a:Ldhk;

    invoke-interface {p7}, Ldhi;->f()V

    iput-object p8, p0, Leop;->d:Lkbc;

    new-instance p1, Ledg;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Ledg;-><init>(Leop;I)V

    invoke-virtual {p4, p1}, Ljuf;->d(Lkad;)V

    new-instance p1, Ldsp;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Ldsp;-><init>(Leop;I)V

    invoke-interface {p6, p1}, Lkef;->k(Lkee;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(I)Lnou;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Leop;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Leop;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x695

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "[shot-%s] Already closed, cannot start capture."

    invoke-interface {v0, v1, p1}, Lnah;->p(Ljava/lang/String;I)V

    new-instance p1, Lkdf;

    const-string v0, "Already closed."

    invoke-direct {p1, v0}, Lkdf;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Leop;->i:Lcvr;

    new-instance v7, Lept;

    iget-object v0, v0, Lcvr;->a:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ldqx;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lept;-><init>(Ldqx;I[B[B[B)V

    iput-object v7, p0, Leop;->f:Lept;

    iget-object v0, p0, Leop;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lept;->a()Lnou;

    move-result-object p1

    new-instance v0, Leli;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Leli;-><init>(Leop;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-interface {p1, v0, v1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leop;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lept;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lept;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Leop;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x696

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "[shot-%s] does not exist for Aborting PSL capture."

    invoke-interface {v0, v1, p1}, Lnah;->p(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Lkhr;)V
    .locals 2

    iget-boolean v0, p0, Leop;->g:Z

    if-eqz v0, :cond_0

    sget-object p1, Leop;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "Already closed, cannot process frame."

    const/16 v1, 0x69f

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leop;->f:Lept;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Leop;->f(Lkhr;Z)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Leop;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Leop;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Already closed!"

    const/16 v2, 0x699

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Leop;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    const/4 v0, 0x1

    iput-boolean v0, p0, Leop;->g:Z

    iget-object v0, p0, Leop;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcdm;->q:Lcdm;

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(IFFJ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leop;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lept;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4, p5}, Lept;->c(FFJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object p2, Leop;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 p3, 0x69a

    invoke-interface {p2, p3}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string p3, "[shot-%s] does not exist for collecting PSL frames"

    invoke-interface {p2, p3, p1}, Lnah;->p(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(ILeqa;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leop;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lept;

    if-eqz v0, :cond_0

    new-instance v1, Leoo;

    invoke-direct {v1, p0, p2, p1}, Leoo;-><init>(Leop;Leqa;I)V

    invoke-virtual {v0, v1}, Lept;->d(Leqa;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 p1, 0x0

    :try_start_1
    invoke-interface {p2, p1}, Leqa;->d(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f(Lkhr;Z)V
    .locals 1

    new-instance v0, Leon;

    invoke-direct {v0, p0, p2}, Leon;-><init>(Leop;Z)V

    invoke-static {p1, v0}, Lkfg;->B(Lkhr;Lkex;)V

    return-void
.end method
