.class public Lfzk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpgg;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Lgae;

.field public final c:Llgc;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/lang/String;

.field private final f:Ljava/util/Map;

.field private final g:Z

.field private h:Lpgh;

.field private final i:Lhwy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "fzk"

    nop

    nop

    goto/32 :goto_3

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
    sput-object v0, Lfzk;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Lryh;Lhwy;Lgae;Llgc;Ljava/util/concurrent/Executor;Lfzm;Lrss;)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    const/4 p2, 0x0

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

    :goto_1
    const-string p1, ""

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p1, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean p2, p0, Lfzk;->g:Z

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean p1, p6, Lfzm;->b:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1}, Lphh;->d()Lpnx;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p1, :cond_1

    nop

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_2

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p4, p0, Lfzk;->c:Llgc;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p5, p0, Lfzk;->d:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p7}, Lrss;->h()Z

    move-result p1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_10
    invoke-virtual {p7}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p2, 0x1

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p1, Lphh;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    iget-boolean p1, p6, Lfzm;->c:Z

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

    :goto_15
    iput-object p3, p0, Lfzk;->b:Lgae;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p1, p0, Lfzk;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    iput-object p2, p0, Lfzk;->i:Lhwy;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p1, p0, Lfzk;->f:Ljava/util/Map;

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

    :goto_19
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    const-string p0, ""

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 11

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    return-void

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_8
    const v1, 0x3

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    const v0, 0x1c

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_1
    sget-object v0, Lfzk;->a:Lsdb;

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

    sget-object v1, Lsed;->a:Lsdr;

    nop

    const-string v2, "BobaBufferListener"

    nop

    nop

    invoke-interface {v0, v1, v2}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

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

    const/16 v1, 0x60

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Rendering is disabled!!"

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    :goto_b
    monitor-enter p0

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Lfzk;->f:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lfzk;->a:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lsed;->a:Lsdr;

    nop

    nop

    const-string v2, "BobaBufferListener"

    nop

    invoke-interface {v0, v1, v2}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0x62

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const-string v1, "No preview streams available!"

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_3
    iget-object v0, p0, Lfzk;->i:Lhwy;

    nop

    iget-object v7, p0, Lfzk;->f:Ljava/util/Map;

    nop

    new-instance v10, Llff;

    nop

    nop

    nop

    nop

    iget-object v1, v0, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    check-cast v2, Lpik;

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lhwy;->c:Ljava/lang/Object;

    nop

    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    move-object v3, v1

    nop

    check-cast v3, Loyd;

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lhwy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    move-object v4, v1

    nop

    nop

    nop

    check-cast v4, Lows;

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lhwy;->e:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    move-object v5, v1

    nop

    check-cast v5, Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lhwy;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    move-object v6, v0

    nop

    nop

    nop

    check-cast v6, Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x2

    nop

    nop

    const/4 v9, 0x0

    nop

    move-object v1, v10

    nop

    nop

    nop

    nop

    invoke-direct/range {v1 .. v9}, Llff;-><init>(Lpik;Loyd;Lows;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/Map;ILjava/lang/String;)V

    iput-object v10, p0, Lfzk;->h:Lpgh;

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Lfzk;->g:Z

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    sget-object v0, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lfzk;->h:Lpgh;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Lpgh;->l(Lpgg;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lfzk;->h:Lpgh;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    sget-object v0, Lsed;->a:Lsdr;

    nop

    nop

    iget-object v0, p0, Lfzk;->h:Lpgh;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Lpgh;->m(Lpgg;)V

    iget-object v0, p0, Lfzk;->h:Lpgh;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lpgh;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

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

    :cond_0
    :try_start_1
    sget-object v0, Lsed;->a:Lsdr;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    :goto_3
    monitor-exit p0

    nop

    goto/32 :goto_1

    nop

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

    goto/32 :goto_5

    nop

    nop

    :goto_5
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

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final d(Lpjo;)V
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lgki;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_3
    iget-wide v0, v0, Lpgi;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    :goto_6
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xe

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_18

    nop

    :goto_9
    cmp-long v0, v0, v2

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

    :goto_a
    const v1, 0x2

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

    :goto_c
    goto/32 :goto_8

    nop

    nop

    :goto_d
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Lpjo;->b()Lpgi;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, p0, v1}, Lgki;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p1, v0}, Lpuq;->bF(Lpjo;Lpgv;)V

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    const-wide/16 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    rem-long/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_15
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    const-wide/16 v2, 0x0

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

    nop

    :goto_17
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method
