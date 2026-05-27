.class public final Lfgp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final i:Lnak;


# instance fields
.field public final a:Lmqp;

.field public final b:Landroid/os/Handler;

.field public final c:Lmqp;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/util/concurrent/atomic/AtomicLong;

.field public final f:Ljava/util/concurrent/atomic/AtomicLong;

.field g:Z

.field h:Lva;

.field private final j:Ldhi;

.field private final k:Landroid/media/MediaFormat;

.field private final l:Ljava/util/concurrent/atomic/AtomicLong;

.field private final m:Ljava/util/concurrent/atomic/AtomicLong;

.field private final n:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/microvideo/encoder/AudioTrackSampler"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfgp;->i:Lnak;

    return-void
.end method

.method public constructor <init>(Ldhi;Landroid/media/MediaFormat;Lmqp;Lmqp;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lfgp;->e:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lfgp;->l:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lfgp;->m:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lfgp;->f:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lfgp;->n:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lfgp;->j:Ldhi;

    iput-object p2, p0, Lfgp;->k:Landroid/media/MediaFormat;

    iput-object p4, p0, Lfgp;->a:Lmqp;

    new-instance p1, Ljuf;

    invoke-direct {p1}, Ljuf;-><init>()V

    const-string p2, "mv-aud-encoder"

    invoke-static {p1, p2}, Ljvd;->p(Ljuf;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lfgp;->b:Landroid/os/Handler;

    iput-object p3, p0, Lfgp;->c:Lmqp;

    iput-object p5, p0, Lfgp;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lfgp;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lfgp;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object p1, p0, Lfgp;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object p1, p0, Lfgp;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object p1, p0, Lfgp;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object p1, p0, Lfgp;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public final declared-synchronized b(Lkxy;Lfhd;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfgp;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lfgp;->h:Lva;

    if-eqz v0, :cond_1

    sget-object p1, Lfgp;->i:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "Attempting to re-initialize AudioTrackSampler!"

    const/16 v0, 0x8d1

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lfgp;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldwx;

    new-instance v1, Lfcz;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2}, Lfcz;-><init>(Lfgp;I)V

    iget-object v2, p0, Lfgp;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2}, Ldwx;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v0, Lfhq;

    invoke-direct {v0, p1}, Lfhq;-><init>(Lkxy;)V

    invoke-static {v0}, Lktf;->o(Llen;)Llec;

    move-result-object p1

    iget-object v0, p0, Lfgp;->k:Landroid/media/MediaFormat;

    move-object v1, p1

    check-cast v1, Llef;

    invoke-virtual {v1, v0}, Llef;->c(Landroid/media/MediaFormat;)Lleh;

    move-result-object v0

    iget-object v1, p0, Lfgp;->b:Landroid/os/Handler;

    iput-object v1, v0, Lleh;->c:Landroid/os/Handler;

    new-instance v1, Lfgo;

    invoke-direct {v1, p0}, Lfgo;-><init>(Lfgp;)V

    invoke-virtual {v0, v1}, Lleh;->b(Llel;)V

    invoke-virtual {v0}, Lleh;->a()Lleb;

    move-result-object v0

    invoke-interface {p1}, Llec;->b()V

    new-instance v1, Lva;

    invoke-direct {v1, p1, v0, p2}, Lva;-><init>(Llec;Lleb;Lfhd;)V

    iput-object v1, p0, Lfgp;->h:Lva;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfgp;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lfgp;->g:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lfgp;->h:Lva;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lva;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v1}, Lleb;->b()Lldz;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_2
    iget-object v0, v0, Lva;->a:Ljava/lang/Object;

    :goto_0
    iget-object v4, p0, Lfgp;->c:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldwx;

    invoke-interface {v4}, Ldwx;->b()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lfgp;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v6, v4

    check-cast v6, Lldo;

    iget-wide v6, v6, Lldo;->c:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    invoke-interface {v0, v5, v6}, Lfhd;->f(J)Loxq;

    move-result-object v5

    invoke-virtual {v5}, Loxq;->l()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v4, p0, Lfgp;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lfgp;->j:Ldhi;

    sget-object v6, Ldhv;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    invoke-virtual {v5}, Loxq;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfgp;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfgp;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide/16 v7, 0x5

    cmp-long v0, v5, v7

    if-ltz v0, :cond_4

    iget-object v0, p0, Lfgp;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldxq;

    invoke-virtual {v0}, Ldxq;->b()V

    invoke-virtual {p0, v3}, Lfgp;->a(Z)V

    iget-object v0, p0, Lfgp;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_4
    invoke-static {v4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v1

    check-cast v4, Lldt;

    iget-object v4, v4, Lldt;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lldo;

    iget-object v5, v5, Lldo;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-object v4, v1

    check-cast v4, Lldt;

    iget-object v4, v4, Lldt;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lldo;

    iget-object v5, v5, Lldo;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lldo;

    iget-wide v5, v0, Lldo;->c:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    move-object v0, v1

    check-cast v0, Lldt;

    iput-wide v4, v0, Lldt;->a:J

    iget-object v0, p0, Lfgp;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    invoke-virtual {p0, v2}, Lfgp;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :try_start_3
    invoke-interface {v1}, Lldz;->close()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v1}, Lldz;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_5
    const-class v4, Ljava/lang/Throwable;

    const-string v5, "addSuppressed"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Throwable;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v1

    :goto_2
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_6
    monitor-exit p0

    return-void

    :catch_1
    move-exception v0

    :try_start_7
    sget-object v1, Lfgp;->i:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Error trying to encode audio packet. Possible codec shutdown"

    const/16 v3, 0x8d6

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit p0

    return-void

    :cond_7
    :goto_3
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public final declared-synchronized close()V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lfgp;->g:Z

    invoke-virtual {p0, v0}, Lfgp;->a(Z)V

    iget-object v3, p0, Lfgp;->h:Lva;

    iget-object v0, p0, Lfgp;->d:Ljava/util/concurrent/Executor;

    new-instance v9, Levy;

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Levy;-><init>(Lfgp;Lva;I[B[B[B[B)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
