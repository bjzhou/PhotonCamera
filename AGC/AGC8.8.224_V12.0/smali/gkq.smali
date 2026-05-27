.class public final Lgkq;
.super Ljava/lang/Object;

# interfaces
.implements Lkef;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/util/concurrent/locks/ReentrantLock;

.field public final c:Ljava/util/List;

.field public d:Ljava/lang/String;

.field public e:Lkef;

.field public f:Lked;

.field public g:Z

.field public final h:Lkee;

.field private final i:Lken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/commands/framebuffer/PckDynamicFrameBuffer"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgkq;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lken;Ljvs;Ljuf;Ljava/util/concurrent/Executor;Ljava/util/Map;ILjava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lgkq;->b:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgkq;->c:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lgkq;->d:Ljava/lang/String;

    new-instance v0, Ldsp;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v2}, Ldsp;-><init>(Lgkq;I)V

    iput-object v0, p0, Lgkq;->h:Lkee;

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v1}, Lmoz;->e(Z)V

    iput-object p1, p0, Lgkq;->i:Lken;

    if-eqz p7, :cond_0

    invoke-interface {p5, p7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkgq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v1, p6}, Lken;->r(Lkgq;I)Lkef;

    move-result-object p6

    iput-object p6, p0, Lgkq;->e:Lkef;

    iget-object p6, v1, Lkgq;->c:Lmwn;

    invoke-static {p6}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p6

    sget-object v1, Lefv;->s:Lefv;

    invoke-interface {p6, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p6

    sget-object v1, Lmtf;->a:Lj$/util/stream/Collector;

    invoke-interface {p6, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    iget-object p6, p0, Lgkq;->e:Lkef;

    invoke-interface {p6, v0}, Lkef;->k(Lkee;)V

    iput-object p7, p0, Lgkq;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p7, Lgkl;

    invoke-interface {p5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgq;

    invoke-direct {p7, v0, p6}, Lgkl;-><init>(Lkgq;I)V

    iput-object p7, p0, Lgkq;->e:Lkef;

    :goto_0
    :try_start_0
    new-instance p6, Lgko;

    const/4 v6, 0x0

    move-object v1, p6

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lgko;-><init>(Lgkq;Ljava/util/Map;Lken;Ljava/util/concurrent/Executor;I)V

    invoke-interface {p2, p6, p4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljuf;->d(Lkad;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lgkq;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Error attaching active camera monitor: %s"

    const/16 p4, 0xb7e

    invoke-static {p2, p3, p1, p4}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void
.end method

.method private static t(Lken;Lkef;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkef;->close()V

    invoke-interface {p1}, Lkef;->q()Lkgq;

    move-result-object p1

    iget-object p1, p1, Lkgq;->c:Lmwn;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkfj;

    invoke-static {v0}, Lgky;->g(Lkfj;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Lken;->e(Lkfj;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lgkq;->e:Lkef;

    invoke-interface {v0}, Lkef;->a()I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lgkq;->e:Lkef;

    invoke-interface {v0}, Lkef;->b()I

    move-result v0

    return v0
.end method

.method public final c()Lkeb;
    .locals 1

    iget-object v0, p0, Lgkq;->e:Lkef;

    invoke-interface {v0}, Lkef;->c()Lkeb;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 8

    iget-boolean v0, p0, Lgkq;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgkq;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-virtual {p0}, Lgkq;->r()Lkad;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lgkq;->g:Z

    iget-object v2, p0, Lgkq;->e:Lkef;

    iget-object v3, p0, Lgkq;->h:Lkee;

    invoke-interface {v2, v3}, Lkef;->l(Lkee;)V

    iget-object v2, p0, Lgkq;->i:Lken;

    iget-object v3, p0, Lgkq;->e:Lkef;

    invoke-static {v2, v3}, Lgkq;->t(Lken;Lkef;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Lkad;->close()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-interface {v0}, Lkad;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    const-class v3, Ljava/lang/Throwable;

    const-string v4, "addSuppressed"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v7

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    throw v2

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public final d(Lmqs;)Lkeb;
    .locals 1

    iget-object v0, p0, Lgkq;->e:Lkef;

    invoke-interface {v0, p1}, Lkef;->d(Lmqs;)Lkeb;

    move-result-object p1

    return-object p1
.end method

.method public final e()Lkeb;
    .locals 1

    iget-object v0, p0, Lgkq;->e:Lkef;

    invoke-interface {v0}, Lkef;->e()Lkeb;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lmqs;)Lkeb;
    .locals 1

    iget-object v0, p0, Lgkq;->e:Lkef;

    invoke-interface {v0, p1}, Lkef;->f(Lmqs;)Lkeb;

    move-result-object p1

    return-object p1
.end method

.method public final g()Lkeb;
    .locals 1

    iget-object v0, p0, Lgkq;->e:Lkef;

    invoke-interface {v0}, Lkef;->g()Lkeb;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lkeb;
    .locals 1

    iget-object v0, p0, Lgkq;->e:Lkef;

    invoke-interface {v0}, Lkef;->h()Lkeb;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lgkq;->e:Lkef;

    invoke-interface {v0}, Lkef;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lgkq;->e:Lkef;

    invoke-interface {v0}, Lkef;->j()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized k(Lkee;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgkq;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized l(Lkee;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgkq;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final m(I)V
    .locals 1

    iget-object v0, p0, Lgkq;->e:Lkef;

    invoke-interface {v0, p1}, Lkef;->m(I)V

    return-void
.end method

.method public final n(Lked;)V
    .locals 1

    iput-object p1, p0, Lgkq;->f:Lked;

    iget-object v0, p0, Lgkq;->e:Lkef;

    invoke-interface {v0, p1}, Lkef;->n(Lked;)V

    return-void
.end method

.method public final o(Lkeg;)Z
    .locals 1

    iget-object v0, p0, Lgkq;->e:Lkef;

    invoke-interface {v0, p1}, Lkef;->o(Lkeg;)Z

    move-result p1

    return p1
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Lgkq;->e:Lkef;

    invoke-interface {v0}, Lkef;->p()Z

    move-result v0

    return v0
.end method

.method public final q()Lkgq;
    .locals 1

    iget-object v0, p0, Lgkq;->e:Lkef;

    invoke-interface {v0}, Lkef;->q()Lkgq;

    move-result-object v0

    return-object v0
.end method

.method public final r()Lkad;
    .locals 3

    iget-object v0, p0, Lgkq;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v2, Lgss;

    invoke-direct {v2, p0, v0, v1}, Lgss;-><init>(Lgkq;Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    return-object v2
.end method

.method final synthetic s(Ljava/util/Map;Lken;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    iget-object v0, p0, Lgkq;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lgkq;->g:Z

    if-nez v0, :cond_1

    invoke-interface {p1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgkq;->d:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lgkq;->e:Lkef;

    invoke-interface {v0}, Lkef;->a()I

    move-result v6

    iget-object v0, p0, Lgkq;->e:Lkef;

    iget-object v1, p0, Lgkq;->h:Lkee;

    invoke-interface {v0, v1}, Lkef;->l(Lkee;)V

    iget-object v0, p0, Lgkq;->e:Lkef;

    invoke-interface {v0}, Lkef;->q()Lkgq;

    move-result-object v1

    iget-object v1, v1, Lkgq;->c:Lmwn;

    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lefv;->s:Lefv;

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lmtf;->a:Lj$/util/stream/Collector;

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    invoke-static {p2, v0}, Lgkq;->t(Lken;Lkef;)V

    new-instance v0, Lgkp;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lgkp;-><init>(Lgkq;Ljava/lang/String;Ljava/util/Map;Lken;II)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object p4, p0, Lgkq;->d:Ljava/lang/String;

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    sget-object p2, Lgkq;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    invoke-interface {p2, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 p2, 0xb8a

    invoke-interface {p1, p2}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string p2, "Error attaching FrameBuffer for camera %s"

    invoke-interface {p1, p2, p4}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lgkq;->b:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    :goto_1
    iget-object p1, p0, Lgkq;->b:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lgkq;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
