.class public Ljuj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljvz;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Lphh;

.field private final d:Lpgh;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_4

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
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

    nop

    nop

    nop

    :goto_2
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x11

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
    const/16 v3, 0x1fe

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, Lsdb;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    aput-object v0, v1, v3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    const-string v0, "juj"

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    sput-object v0, Ljuj;->a:Lsdb;

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

    nop

    nop
.end method

.method public constructor <init>(Lphh;Lpgh;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_6

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
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Ljuj;->f:Ljava/util/Map;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Ljuj;->d:Lpgh;

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

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Ljuj;->e:Ljava/util/List;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Ljuj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Ljuj;->c:Lphh;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ljuj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    const-wide/16 v1, -0x1

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ljuj;->e:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    goto/16 :goto_b

    nop

    nop

    :cond_0
    iget-object v0, p0, Ljuj;->e:Ljava/util/List;

    nop

    nop

    nop

    invoke-static {v0}, Lrgw;->ab(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lpge;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpge;->b()Lpgi;

    move-result-object v0

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    iget-wide v0, v0, Lpgi;->b:J

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    return-wide v1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    return-wide v1

    nop

    nop

    nop

    :catchall_1
    move-exception v1

    nop

    nop

    nop

    :try_start_2
    invoke-interface {v0}, Lpge;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_a

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v1

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_4
    invoke-interface {v0}, Lpge;->b()Lpgi;

    move-result-object v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-wide v1, v3, Lpgi;->b:J

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    :try_start_5
    invoke-interface {v0}, Lpge;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    monitor-exit p0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    return-wide v0

    nop

    :cond_5
    :try_start_6
    iget-object v0, p0, Ljuj;->d:Lpgh;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpgh;->e()Lpge;

    move-result-object v0

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_12

    nop

    nop
.end method

.method public final declared-synchronized b(Ljvy;Ljava/util/concurrent/Executor;)Lpci;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v0, Ljuf;

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, p0, p1, p2, v1}, Ljuf;-><init>(Ljuj;Ljvy;Ljava/util/concurrent/Executor;I)V

    iget-object p2, p0, Ljuj;->d:Lpgh;

    nop

    nop

    nop

    invoke-interface {p2, v0}, Lpgh;->l(Lpgg;)V

    iget-object p2, p0, Ljuj;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lixc;

    nop

    nop

    nop

    const/16 v0, 0xa

    nop

    nop

    invoke-direct {p2, p0, p1, v0}, Lixc;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x5

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

    :goto_5
    add-int v0, v0, v1

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

    nop

    :goto_6
    const v0, 0xc

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

    :goto_7
    return-object p2

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop
.end method

.method public final declared-synchronized c(J)Lprw;
    .locals 5

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Ljuj;->d:Lpgh;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpgh;->b()I

    move-result v0

    nop

    const/16 v1, 0x14

    nop

    nop

    if-gt v0, v1, :cond_0

    nop

    nop

    nop

    sget-object v1, Ljuj;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    const/16 v2, 0xa43

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    const-string v2, "Microvideo ring buffer size runs low (%d) and will cause large frame gaps in Microvideo/Long Shots."

    nop

    invoke-interface {v1, v2, v0}, Lscz;->t(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Ljuj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    iget-object v0, p0, Ljuj;->e:Ljava/util/List;

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_3

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Lpge;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lpge;->b()Lpgi;

    move-result-object v3

    nop

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-wide v3, v3, Lpgi;->b:J

    nop

    nop

    cmp-long v3, v3, p1

    nop

    nop

    nop

    nop

    nop

    if-lez v3, :cond_1

    nop

    nop

    nop

    nop

    iget-object p1, p0, Ljuj;->c:Lphh;

    nop

    nop

    nop

    invoke-interface {v2, p1}, Lpge;->e(Lphh;)Lprw;

    move-result-object p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_1
    iget-object v0, p0, Ljuj;->d:Lpgh;

    nop

    nop

    new-instance v2, Ljug;

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p1, p2, v3}, Ljug;-><init>(JI)V

    invoke-interface {v0, v2}, Lpgh;->d(Lrsv;)Lpge;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    return-object p1

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    :goto_7
    const v1, 0x1d

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    const v0, 0x1d

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    goto :goto_c

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_2
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw p2

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_5

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

    :cond_5
    :try_start_3
    invoke-interface {p1}, Lpge;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_10
    goto/32 :goto_11

    nop

    nop

    :goto_11
    monitor-exit p0

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

    :goto_12
    if-eqz p1, :cond_6

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-object v1

    nop

    nop

    :catchall_2
    move-exception p2

    nop

    :try_start_4
    invoke-interface {p1}, Lpge;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    goto :goto_16

    nop

    nop

    :goto_15
    :try_start_5
    iget-object p2, p0, Ljuj;->c:Lphh;

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lpge;->e(Lphh;)Lprw;

    move-result-object v1

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_16
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_3

    nop

    nop

    :goto_18
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d(J)Lprw;
    .locals 5

    goto/32 :goto_6

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lpge;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4
    return-object v1

    nop

    nop

    :catchall_0
    move-exception p2

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-interface {p1}, Lpge;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    const v1, 0xa

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1b

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    if-eqz p1, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object v1

    nop

    nop

    :cond_2
    :try_start_2
    new-instance v0, Ljug;

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v0, p1, p2, v2}, Ljug;-><init>(JI)V

    iget-object p1, p0, Ljuj;->d:Lpgh;

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lpgh;->d(Lrsv;)Lpge;

    move-result-object p1

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    :try_start_3
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw p2

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_4
    iget-object v0, p0, Ljuj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    iget-object v0, p0, Ljuj;->e:Ljava/util/List;

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_5

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Lpge;

    nop

    invoke-interface {v2}, Lpge;->b()Lpgi;

    move-result-object v3

    nop

    if-eqz v3, :cond_3

    nop

    iget-wide v3, v3, Lpgi;->b:J

    nop

    nop

    nop

    cmp-long v3, v3, p1

    nop

    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Ljuj;->c:Lphh;

    nop

    nop

    invoke-interface {v2, p1}, Lpge;->e(Lphh;)Lprw;

    move-result-object p1

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_12

    nop

    nop

    :goto_11
    :try_start_5
    iget-object p2, p0, Ljuj;->c:Lphh;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lpge;->e(Lphh;)Lprw;

    move-result-object v1

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    :goto_14
    monitor-exit p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    throw p1

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop
.end method

.method public final declared-synchronized e()Lprw;
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x11

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    return-object v1

    nop

    :catchall_0
    move-exception v1

    nop

    :try_start_0
    invoke-interface {v0}, Lpge;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lpge;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_9
    return-object v1

    nop

    nop

    nop

    nop

    :goto_a
    :try_start_2
    iget-object v0, p0, Ljuj;->e:Ljava/util/List;

    nop

    nop

    invoke-static {v0}, Lrgw;->ab(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lpge;

    nop

    nop

    nop

    iget-object v1, p0, Ljuj;->c:Lphh;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpge;->e(Lphh;)Lprw;

    move-result-object v0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_13

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    :try_start_3
    iget-object v0, p0, Ljuj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    iget-object v0, p0, Ljuj;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_17

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

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    goto :goto_11

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_11
    throw v1

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_0

    nop

    nop

    :goto_12
    const v1, 0x12

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    monitor-exit p0

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

    :goto_14
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_15
    return-object v0

    nop

    :cond_2
    :try_start_5
    new-instance v0, Lpua;

    nop

    nop

    const/4 v2, 0x1

    nop

    invoke-direct {v0, v2}, Lpua;-><init>(I)V

    iget-object v2, p0, Ljuj;->d:Lpgh;

    nop

    invoke-interface {v2, v0}, Lpgh;->f(Lrsv;)Lpge;

    move-result-object v0

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_16

    nop

    nop

    :goto_16
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    goto :goto_1a

    nop

    nop

    nop

    nop

    :goto_19
    :try_start_6
    iget-object v1, p0, Ljuj;->c:Lphh;

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpge;->e(Lphh;)Lprw;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1a
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized f(J)Lrss;
    .locals 4

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p2

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lpge;->b()Lpgi;

    move-result-object p2

    nop

    if-eqz p2, :cond_2

    nop

    nop

    iget-wide v0, p2, Lpgi;->b:J

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    nop

    invoke-static {p2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p2

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Lpge;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_a

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    :try_start_2
    invoke-interface {p1}, Lpge;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    goto :goto_e

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    :try_start_3
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw p2

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    throw p1

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object p2

    nop

    :cond_2
    :goto_12
    :try_start_4
    sget-object p2, Lrsa;->a:Lrsa;

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    :goto_14
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_5
    iget-object v0, p0, Ljuj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ljuj;->e:Ljava/util/List;

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lpge;

    nop

    nop

    invoke-interface {v1}, Lpge;->b()Lpgi;

    move-result-object v1

    nop

    nop

    if-eqz v1, :cond_4

    nop

    iget-wide v1, v1, Lpgi;->b:J

    nop

    nop

    nop

    nop

    nop

    cmp-long v3, v1, p1

    nop

    nop

    nop

    if-lez v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-object p1

    nop

    nop

    nop

    :cond_5
    :try_start_6
    iget-object v0, p0, Ljuj;->d:Lpgh;

    nop

    nop

    nop

    new-instance v1, Ljug;

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p1, p2, v2}, Ljug;-><init>(JI)V

    invoke-interface {v0, v1}, Lpgh;->d(Lrsv;)Lpge;

    move-result-object p1

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_17
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_6
    :try_start_7
    invoke-interface {p1}, Lpge;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_18
    goto/32 :goto_16

    nop

    nop

    :goto_19
    return-object p1

    nop

    nop

    nop

    nop

    :cond_7
    :try_start_8
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized g(J)Ljava/util/List;
    .locals 6

    goto/32 :goto_1

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

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    const v0, 0xf

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_3
    goto :goto_8

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

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ljuj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ljuj;->d:Lpgh;

    nop

    nop

    nop

    invoke-interface {v1}, Lpgh;->j()Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lryb;

    nop

    nop

    nop

    invoke-virtual {v1}, Lryb;->t()Lscq;

    move-result-object v1

    nop

    nop

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Lpge;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lpge;->b()Lpgi;

    move-result-object v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-wide v3, v3, Lpgi;->b:J

    nop

    cmp-long v5, v3, p1

    nop

    nop

    if-gtz v5, :cond_2

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    nop

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Ljuj;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    nop

    nop

    nop

    nop

    :cond_3
    :goto_9
    invoke-interface {v2}, Lpge;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_a
    throw p1

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

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

    :goto_d
    return-object v0

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized h()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    const v0, 0xf

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

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ljuj;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lpge;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpge;->close()V

    goto :goto_4

    nop

    nop

    :cond_0
    iget-object v0, p0, Ljuj;->e:Ljava/util/List;

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Ljuj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_8
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

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

    nop
.end method

.method public final declared-synchronized i(Ljvy;)V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ljuj;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Lpgg;

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_a
    const v0, 0x1e

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

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_12

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    throw p1

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    sget-object v0, Ljuj;->a:Lsdb;

    nop

    nop

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

    const-string v1, "listener not found"

    nop

    nop

    nop

    const/16 v2, 0xa44

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v2, v0, p1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    nop

    nop

    nop

    :goto_12
    if-eqz p1, :cond_0

    nop

    nop

    nop

    iget-object v0, p0, Ljuj;->d:Lpgh;

    nop

    nop

    invoke-interface {v0, p1}, Lpgh;->m(Lpgg;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final j()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method
