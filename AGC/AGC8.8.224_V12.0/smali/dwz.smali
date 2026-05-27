.class public final Ldwz;
.super Ljava/lang/Object;

# interfaces
.implements Ldwx;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lldp;

.field private final c:Ljava/util/Map;

.field private final d:I

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Lkte;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/framestore/AudioFrameStoreImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldwz;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lldp;ILjava/util/concurrent/atomic/AtomicBoolean;Lkte;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p5}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p5, p0, Ldwz;->c:Ljava/util/Map;

    iput-object p1, p0, Ldwz;->b:Lldp;

    iput p2, p0, Ldwz;->d:I

    iput-object p3, p0, Ldwz;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Ldwz;->f:Lkte;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 8

    iget-object v0, p0, Ldwz;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eq v0, p1, :cond_2

    if-nez p1, :cond_2

    iget-object p1, p0, Ldwz;->f:Lkte;

    iget-object v0, p1, Lkte;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lkte;->d:Ljava/lang/Object;

    check-cast v2, Lmsp;

    iget v2, v2, Lmsp;->b:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p1, Lkte;->b:Ljava/lang/Object;

    invoke-static {v2}, Llyh;->q(Lmyb;)Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, -0x1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    iget-object v3, p1, Lkte;->d:Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    check-cast v3, Lmtb;

    invoke-virtual {v3, v4}, Lmtb;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-wide v3, v5

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lkte;->d:Ljava/lang/Object;

    check-cast v1, Lmtb;

    invoke-virtual {v1}, Lmtb;->j()V

    iget-object p1, p1, Lkte;->b:Ljava/lang/Object;

    invoke-interface {p1}, Lmzi;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return-void
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldwz;->f:Lkte;

    invoke-virtual {v0}, Lkte;->k()Lkad;

    move-result-object v0

    check-cast v0, Lirx;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lirx;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final declared-synchronized c()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldwz;->b:Lldp;

    iget v1, p0, Ldwz;->d:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Ldwz;->d:I

    invoke-interface {v0, v1, v2}, Lldp;->b(Ljava/nio/ByteBuffer;I)Lldo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, v0, Lldo;->a:Ljava/nio/ByteBuffer;

    iget v2, v0, Lldo;->b:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Ldwz;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldwz;->f:Lkte;

    iget-wide v2, v0, Lldo;->c:J

    new-instance v4, Lirx;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v5}, Lirx;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2, v3, v4}, Lkte;->m(JLjava/lang/Object;)V

    iget-object v0, p0, Ldwz;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
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

.method public final d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Ldwz;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ldwz;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    sget-object p2, Lnbe;->b:Lnbe;

    invoke-interface {p1, p2}, Lnah;->i(Lnbe;)Lnaz;

    move-result-object p1

    const-string p2, "Attempting to register listener twice."

    const/16 v0, 0x48f

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    iget-object v0, p0, Ldwz;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
