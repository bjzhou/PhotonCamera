.class public final Lidx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpsa;


# instance fields
.field public a:Lpck;

.field public final b:Ljava/util/Set;

.field private final c:Ljava/util/concurrent/Executor;

.field private d:Lrss;

.field private e:Lpci;

.field private f:Lrss;

.field private g:Lpci;

.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v1, 0x14

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    :goto_2
    new-instance v0, Lfzp;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    const v0, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lidx;->i:Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_5
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_19

    nop

    nop

    :goto_8
    const v1, 0x16

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_18

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p1, p0, Lidx;->c:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    iput-object v0, p0, Lidx;->g:Lpci;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lidx;->b:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_14
    iput-object v0, p0, Lidx;->d:Lrss;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    iput-object v0, p0, Lidx;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v0, v1}, Lfzp;-><init>(I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lpck;Lrss;Lrss;Lrss;)Lpci;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object p3

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lidx;->g:Lpci;

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpci;->close()V

    :cond_0
    iput-object p1, p0, Lidx;->a:Lpck;

    nop

    nop

    iput-object p2, p0, Lidx;->d:Lrss;

    nop

    nop

    nop

    nop

    iput-object p3, p0, Lidx;->f:Lrss;

    nop

    nop

    nop

    nop

    check-cast p3, Lrsx;

    nop

    iget-object p1, p3, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object p3, p0, Lidx;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    check-cast p1, Lien;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p0, p3}, Lien;->b(Lidx;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lidx;->e:Lpci;

    nop

    nop

    nop

    nop

    nop

    move-object p1, p4

    nop

    check-cast p1, Lrsx;

    nop

    iget-object p1, p1, Lrsx;->a:Ljava/lang/Object;

    nop

    check-cast p1, Libx;

    nop

    nop

    const-string p3, "palmtimer-metadata"

    nop

    nop

    invoke-virtual {p1, p3}, Libx;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lidx;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    nop

    nop

    nop

    nop

    new-instance p3, Lidw;

    nop

    nop

    nop

    nop

    invoke-direct {p3, p0, p2, p4, p1}, Lidw;-><init>(Lidx;Lrss;Lrss;I)V

    iput-object p3, p0, Lidx;->g:Lpci;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(Lrss;Lrss;I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lidx;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    nop

    if-gt p3, v0, :cond_0

    nop

    nop

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v0, p0, Lidx;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p3, p0, Lidx;->d:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p3}, Lrss;->h()Z

    move-result p3

    nop

    if-eqz p3, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object p3, p0, Lidx;->d:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {p3}, Lrss;->c()Ljava/lang/Object;

    move-result-object p3

    nop

    check-cast p1, Lrsx;

    nop

    nop

    iget-object p1, p1, Lrsx;->a:Ljava/lang/Object;

    nop

    if-ne p3, p1, :cond_1

    nop

    nop

    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lidx;->d:Lrss;

    nop

    nop

    :cond_1
    check-cast p2, Lrsx;

    nop

    iget-object p1, p2, Lrsx;->a:Ljava/lang/Object;

    nop

    check-cast p1, Libx;

    nop

    nop

    nop

    nop

    const-string p2, "palmtimer-metadata"

    nop

    invoke-virtual {p1, p2}, Libx;->j(Ljava/lang/String;)V

    iget-object p1, p0, Lidx;->e:Lpci;

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    nop

    invoke-interface {p1}, Lpci;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :cond_2
    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    :goto_6
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lidx;->f:Lrss;

    nop

    nop

    check-cast v0, Lrsx;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v0, Lien;

    nop

    invoke-virtual {v0}, Lien;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final dQ()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
