.class public abstract Lapt;
.super Ljava/lang/Object;


# instance fields
.field public volatile a:Laqp;

.field public b:Ljava/util/concurrent/Executor;

.field public c:Ljava/util/concurrent/Executor;

.field public d:Laqt;

.field public final e:Lapr;

.field public f:Z

.field public g:Ljava/util/List;

.field public final h:Ljava/util/Map;

.field public final i:Ljava/lang/ThreadLocal;

.field public final j:Ljava/util/Map;

.field public final k:Ljava/util/Map;

.field private final l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lapt;->a()Lapr;

    move-result-object v0

    iput-object v0, p0, Lapt;->e:Lapr;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lapt;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lapt;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lapt;->i:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lapt;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lapt;->k:Ljava/util/Map;

    return-void
.end method

.method public static final v(Ljava/lang/Class;Laqt;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected abstract a()Lapr;
.end method

.method protected abstract b(Lapm;)Laqt;
.end method

.method public final c()Laqt;
    .locals 1

    iget-object v0, p0, Lapt;->d:Laqt;

    if-nez v0, :cond_0

    const-string v0, "internalOpenHelper"

    invoke-static {v0}, Lone;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final d(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lapt;->m()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lapt;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lapt;->o()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lapt;->o()V

    throw p1
.end method

.method public e(Ljava/util/Map;)Ljava/util/List;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lojx;->a:Lojx;

    return-object p1
.end method

.method protected f()Ljava/util/Map;
    .locals 1

    sget-object v0, Lojy;->a:Lojy;

    return-object v0
.end method

.method public g()Ljava/util/Set;
    .locals 1

    sget-object v0, Lojz;->a:Lojz;

    return-object v0
.end method

.method public final h()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lapt;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    const-string v0, "internalQueryExecutor"

    invoke-static {v0}, Lone;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final i()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lapt;->c:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    const-string v0, "internalTransactionExecutor"

    invoke-static {v0}, Lone;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final j()Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lapt;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final k()V
    .locals 2

    iget-boolean v0, p0, Lapt;->f:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final l()V
    .locals 2

    invoke-virtual {p0}, Lapt;->r()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lapt;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final m()V
    .locals 2

    invoke-virtual {p0}, Lapt;->k()V

    invoke-virtual {p0}, Lapt;->k()V

    invoke-virtual {p0}, Lapt;->c()Laqt;

    move-result-object v0

    invoke-interface {v0}, Laqt;->a()Laqp;

    move-result-object v0

    iget-object v1, p0, Lapt;->e:Lapr;

    invoke-virtual {v1, v0}, Lapr;->c(Laqp;)V

    invoke-interface {v0}, Laqp;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Laqp;->e()V

    return-void

    :cond_0
    invoke-interface {v0}, Laqp;->d()V

    return-void
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Lapt;->a:Laqp;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Laqp;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lapt;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v2, p0, Lapt;->e:Lapr;

    iget-object v3, v2, Lapr;->k:Laeh;

    iput-object v1, v2, Lapr;->k:Laeh;

    invoke-virtual {p0}, Lapt;->c()Laqt;

    move-result-object v1

    invoke-interface {v1}, Laqt;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    :cond_1
    return-void
.end method

.method public final o()V
    .locals 4

    invoke-virtual {p0}, Lapt;->c()Laqt;

    move-result-object v0

    invoke-interface {v0}, Laqt;->a()Laqp;

    move-result-object v0

    invoke-interface {v0}, Laqp;->f()V

    invoke-virtual {p0}, Lapt;->r()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lapt;->e:Lapr;

    iget-object v1, v0, Lapr;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lapr;->j:Ladq;

    iget-object v1, v0, Lapr;->a:Lapt;

    invoke-virtual {v1}, Lapt;->h()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v0, v0, Lapr;->h:Ljava/lang/Runnable;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final p(Laqp;)V
    .locals 3

    iget-object v0, p0, Lapt;->e:Lapr;

    iget-object v1, v0, Lapr;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lapr;->e:Z

    if-eqz v2, :cond_0

    const-string p1, "ROOM"

    const-string v0, "Invalidation tracker is initialized twice :/."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    const-string v2, "PRAGMA temp_store = MEMORY;"

    invoke-interface {p1, v2}, Laqp;->g(Ljava/lang/String;)V

    const-string v2, "PRAGMA recursive_triggers=\'ON\';"

    invoke-interface {p1, v2}, Laqp;->g(Ljava/lang/String;)V

    const-string v2, "CREATE TEMP TABLE room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    invoke-interface {p1, v2}, Laqp;->g(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lapr;->c(Laqp;)V

    const-string v2, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1"

    invoke-interface {p1, v2}, Laqp;->l(Ljava/lang/String;)Larf;

    move-result-object p1

    iput-object p1, v0, Lapr;->i:Larf;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lapr;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method public final q()V
    .locals 1

    invoke-virtual {p0}, Lapt;->c()Laqt;

    move-result-object v0

    invoke-interface {v0}, Laqt;->a()Laqp;

    move-result-object v0

    invoke-interface {v0}, Laqp;->h()V

    return-void
.end method

.method public final r()Z
    .locals 1

    invoke-virtual {p0}, Lapt;->c()Laqt;

    move-result-object v0

    invoke-interface {v0}, Laqt;->a()Laqp;

    move-result-object v0

    invoke-interface {v0}, Laqp;->i()Z

    move-result v0

    return v0
.end method

.method public final s()Z
    .locals 2

    iget-object v0, p0, Lapt;->a:Laqp;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Laqp;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t(Ljava/lang/String;)Larf;
    .locals 1

    invoke-virtual {p0}, Lapt;->k()V

    invoke-virtual {p0}, Lapt;->l()V

    invoke-virtual {p0}, Lapt;->c()Laqt;

    move-result-object v0

    invoke-interface {v0}, Laqt;->a()Laqp;

    move-result-object v0

    invoke-interface {v0, p1}, Laqp;->l(Ljava/lang/String;)Larf;

    move-result-object p1

    return-object p1
.end method

.method public final u(Laqv;)Landroid/database/Cursor;
    .locals 1

    invoke-virtual {p0}, Lapt;->k()V

    invoke-virtual {p0}, Lapt;->l()V

    invoke-virtual {p0}, Lapt;->c()Laqt;

    move-result-object v0

    invoke-interface {v0}, Laqt;->a()Laqp;

    move-result-object v0

    invoke-interface {v0, p1}, Laqp;->a(Laqv;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
