.class public Libc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljava/util/Map;

.field public final c:Lnpr;

.field private final d:Lqkh;

.field private final e:I

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    sput-object v0, Libc;->a:Lsdb;

    nop

    nop

    goto/32 :goto_1

    nop

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

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "ibc"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Lqkh;ILjava/util/concurrent/atomic/AtomicBoolean;Lnpr;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p3, p0, Libc;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object v0, p0, Libc;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p4, p0, Libc;->c:Lnpr;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    iput p2, p0, Libc;->e:I

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

    :goto_8
    iput-object p1, p0, Libc;->d:Lqkh;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 6

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xe

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
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

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    :goto_e
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p0, Libc;->d:Lqkh;

    nop

    nop

    iget v1, p0, Libc;->e:I

    nop

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2, v1}, Lqkh;->b(Ljava/nio/ByteBuffer;I)Lqkg;

    move-result-object v0

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v1, v0, Lqkg;->a:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    iget v2, v0, Lqkg;->b:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Libc;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    iget-object v1, p0, Libc;->c:Lnpr;

    nop

    nop

    iget-wide v2, v0, Lqkg;->c:J

    nop

    nop

    nop

    nop

    new-instance v4, Lndt;

    nop

    nop

    nop

    const/16 v5, 0x10

    nop

    invoke-direct {v4, v0, v5}, Lndt;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2, v3, v4}, Lnpr;->e(JLjava/lang/Object;)V

    iget-object v0, p0, Libc;->b:Ljava/util/Map;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljava/util/Map$Entry;

    nop

    nop

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/util/concurrent/Executor;

    nop

    nop

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final b(Z)V
    .locals 8

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_2
    iget-object p0, p0, Libc;->c:Lnpr;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iget-object p1, p0, Lnpr;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    if-ne v0, p1, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    monitor-enter p1

    nop

    nop

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lnpr;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Lrur;

    nop

    nop

    iget v1, v1, Lrur;->b:I

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lnpr;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lrgw;->z(Lsan;)Ljava/util/Iterator;

    move-result-object v1

    nop

    const-wide/16 v2, -0x1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    cmp-long v7, v2, v5

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_2

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lnpr;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lrve;

    nop

    invoke-virtual {v2, v4}, Lrve;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    nop

    nop

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-wide v2, v5

    nop

    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_3
    iget-object v0, p0, Lnpr;->d:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v0, Lrve;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrve;->l()V

    iget-object p0, p0, Lnpr;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lsbv;->clear()V

    monitor-exit p1

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit p1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    :goto_d
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Libc;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    const v0, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    throw p0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method
