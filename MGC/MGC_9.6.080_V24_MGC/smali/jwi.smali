.class public Ljwi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final i:Lsdb;


# instance fields
.field public final a:Lrss;

.field public final b:Landroid/os/Handler;

.field public final c:Lrss;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/util/concurrent/atomic/AtomicLong;

.field public final f:Ljava/util/concurrent/atomic/AtomicLong;

.field g:Ljwh;

.field h:Z

.field private final j:Landroid/media/MediaFormat;

.field private final k:Ljava/util/concurrent/atomic/AtomicLong;

.field private final l:Ljava/util/concurrent/atomic/AtomicLong;

.field private final m:Ljava/util/concurrent/atomic/AtomicLong;

.field private final n:Lhoh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "jwi"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    sput-object v0, Ljwi;->i:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Lhoh;Landroid/media/MediaFormat;Lrss;Lrss;Ljava/util/concurrent/Executor;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    const-string p2, "mv-aud-encoder"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Ljwi;->a:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    :goto_5
    invoke-static {p1, p2}, Lolx;->bj(Lows;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Ljwi;->j:Landroid/media/MediaFormat;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Ljwi;->b:Landroid/os/Handler;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Ljwi;->k:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Ljwi;->l:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_e
    new-instance p1, Lows;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Ljwi;->m:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_12
    invoke-direct {p1}, Lows;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p3, p0, Ljwi;->c:Lrss;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p5, p0, Ljwi;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_16
    iput-object v0, p0, Ljwi;->f:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p1, p0, Ljwi;->n:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    iput-object v0, p0, Ljwi;->e:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    goto/32 :goto_1c

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Ljwi;->k:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_15

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p0, Ljwi;->m:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_d
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-wide/16 v4, 0x3e8

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_11
    if-gez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    iget-object p0, p0, Ljwi;->m:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    :goto_15
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Ljwi;->e:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_18
    cmp-long p1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_19
    iget-object p1, p0, Ljwi;->f:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p1, p0, Ljwi;->l:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1f
    add-long/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 7

    goto/32 :goto_19

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    goto/32 :goto_12

    nop

    :cond_0
    :try_start_0
    iget-object v1, v1, Lqau;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Lqkp;

    nop

    nop

    nop

    invoke-virtual {v1}, Lqkp;->a()Lqkr;

    move-result-object v1

    nop
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-interface {v1}, Lqkr;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_3
    iget-object v0, v0, Ljwh;->b:Ljwk;

    nop

    :goto_7
    iget-object v2, p0, Ljwi;->c:Lrss;

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Libc;

    nop

    iget-object v2, v2, Libc;->c:Lnpr;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lnpr;->c()Lpci;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Lndt;

    nop

    nop

    if-nez v2, :cond_2

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    goto :goto_8

    nop

    :cond_2
    iget-object v2, v2, Lndt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v2, :cond_3

    nop

    nop

    nop

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_9

    nop

    nop

    nop

    nop

    :cond_3
    iget-object v3, p0, Ljwi;->e:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    move-object v4, v2

    nop

    nop

    nop

    nop

    check-cast v4, Lqkg;

    nop

    nop

    nop

    nop

    nop

    iget-wide v4, v4, Lqkg;->c:J

    nop

    nop

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    nop

    nop

    invoke-virtual {v0, v3, v4}, Ljwk;->e(J)Luoj;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Luoj;->k()Z

    move-result v4

    nop

    nop

    if-eqz v4, :cond_4

    nop

    nop

    nop

    iget-object v2, p0, Ljwi;->k:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto/16 :goto_7

    nop

    nop

    nop

    :cond_4
    sget-object v0, Lhmz;->a:Lhmo;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Luoj;->l()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_5

    nop

    nop

    nop

    iget-object v0, p0, Ljwi;->a:Lrss;

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ljwi;->e:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v5, 0x5

    nop

    nop

    nop

    cmp-long v0, v3, v5

    nop

    nop

    nop

    nop

    nop

    if-ltz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ljwi;->a:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Libu;

    nop

    nop

    nop

    invoke-virtual {v0}, Libu;->b()V

    const/4 v0, 0x1

    nop

    nop

    invoke-virtual {p0, v0}, Ljwi;->a(Z)V

    iget-object v0, p0, Ljwi;->e:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_5
    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v2

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_a
    if-eqz v2, :cond_6

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_6
    :try_start_4
    invoke-interface {v1}, Lqkr;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v1

    nop

    nop

    nop

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw v0

    nop
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v0

    nop

    nop

    :try_start_6
    sget-object v1, Ljwi;->i:Lsdb;

    nop

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    const-string v2, "Error trying to encode audio packet. Possible codec shutdown"

    nop

    nop

    nop

    const/16 v3, 0xab4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :cond_7
    :goto_12
    goto/32 :goto_16

    nop

    nop

    :goto_13
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_15
    :try_start_7
    move-object v2, v1

    nop

    check-cast v2, Lqkl;

    nop

    nop

    iget-object v2, v2, Lqkl;->b:Ljava/nio/ByteBuffer;

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lqkg;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lqkg;->a:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-object v2, v1

    nop

    nop

    check-cast v2, Lqkl;

    nop

    nop

    iget-object v2, v2, Lqkl;->b:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lqkg;

    nop

    nop

    iget-object v3, v3, Lqkg;->a:Ljava/nio/ByteBuffer;

    nop

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lqkg;

    nop

    nop

    nop

    nop

    iget-wide v3, v0, Lqkg;->c:J

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lqkl;

    nop

    nop

    nop

    iput-wide v2, v0, Lqkl;->a:J

    nop

    nop

    iget-object v0, p0, Ljwi;->l:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Ljwi;->a(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-interface {v1}, Lqkr;->close()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/32 :goto_10

    nop

    nop

    :goto_16
    monitor-exit p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_8

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1b

    nop

    :goto_19
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_9
    iget-object v0, p0, Ljwi;->c:Lrss;

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_7

    nop

    nop

    nop

    iget-boolean v0, p0, Ljwi;->h:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_9

    nop

    nop

    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_9
    iget-object v0, p0, Ljwi;->g:Ljwh;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Ljwh;->c:Lqau;

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Lqep;Ljwk;)V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    :try_start_0
    iget-object v0, p0, Ljwi;->g:Ljwh;

    nop

    if-eqz v0, :cond_2

    nop

    sget-object p1, Ljwi;->i:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    const/16 p2, 0xaaf

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    const-string p2, "Attempting to re-initialize AudioTrackSampler!"

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-object v0, p0, Ljwi;->c:Lrss;

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :cond_2
    :try_start_2
    iget-object v0, p0, Ljwi;->c:Lrss;

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Libc;

    nop

    nop

    nop

    nop

    new-instance v1, Ljsp;

    nop

    nop

    nop

    nop

    const/16 v2, 0xd

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Ljsp;-><init>(Ljava/lang/Object;I)V

    iget-object v2, p0, Ljwi;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v0, Libc;->b:Ljava/util/Map;

    nop

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Libc;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lsec;->b:Lsec;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->j(Lsec;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const/16 v1, 0x538

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    nop

    const-string v1, "Attempting to register listener twice."

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto :goto_b

    nop

    nop

    :cond_3
    iget-object v0, v0, Libc;->b:Ljava/util/Map;

    nop

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    new-instance v0, Ljxb;

    nop

    invoke-direct {v0, p1}, Ljxb;-><init>(Lqep;)V

    new-instance p1, Lqku;

    nop

    nop

    nop

    nop

    invoke-direct {p1, v0}, Lqku;-><init>(Lqlb;)V

    iget-object v0, p0, Ljwi;->j:Landroid/media/MediaFormat;

    nop

    nop

    invoke-virtual {p1, v0}, Lqku;->c(Landroid/media/MediaFormat;)Lqkv;

    move-result-object v0

    nop

    iget-object v1, p0, Ljwi;->b:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v0, Lqkv;->c:Landroid/os/Handler;

    nop

    nop

    nop

    new-instance v1, Ljwg;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0}, Ljwg;-><init>(Ljwi;)V

    invoke-virtual {v0, v1}, Lqkv;->a(Lqkz;)V

    invoke-virtual {v0}, Lqkv;->b()Lqau;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lqku;->b()V

    new-instance v1, Ljwh;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p1, v0, p2}, Ljwh;-><init>(Lqku;Lqau;Ljwk;)V

    iput-object v1, p0, Ljwi;->g:Ljwh;

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    throw p1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_3
    monitor-exit p0

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized close()V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    :goto_3
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x11

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_b
    monitor-enter p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    const/4 v0, 0x1

    nop

    nop

    :try_start_1
    iput-boolean v0, p0, Ljwi;->h:Z

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Ljwi;->a(Z)V

    iget-object v0, p0, Ljwi;->g:Ljwh;

    nop

    nop

    nop

    new-instance v1, Ljky;

    nop

    nop

    nop

    nop

    const/16 v2, 0xd

    nop

    invoke-direct {v1, p0, v0, v2}, Ljky;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v0, p0, Ljwi;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method
