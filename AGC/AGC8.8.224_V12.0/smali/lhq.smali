.class public final Llhq;
.super Llho;

# interfaces
.implements Llgt;
.implements Llhb;
.implements Llha;
.implements Llil;


# static fields
.field private static final e:Lnak;


# instance fields
.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Landroid/content/Context;

.field private final g:Llhe;

.field private final h:Ljava/util/concurrent/Executor;

.field private final i:Llhz;

.field private final j:Llhj;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final l:Lmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/battery/BatteryMetricServiceImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Llhq;->e:Lnak;

    return-void
.end method

.method public constructor <init>(Llij;Landroid/content/Context;Llhe;Lnox;Logd;Llhz;Llhj;Loiw;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Llho;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Llhq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Llhq;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p9, p5, p8}, Llij;->b(Ljava/util/concurrent/Executor;Logd;Loiw;)Lmap;

    move-result-object p1

    iput-object p1, p0, Llhq;->l:Lmap;

    iput-object p2, p0, Llhq;->f:Landroid/content/Context;

    iput-object p3, p0, Llhq;->g:Llhe;

    iput-object p4, p0, Llhq;->h:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Llhq;->i:Llhz;

    iput-object p7, p0, Llhq;->j:Llhj;

    return-void
.end method

.method private final ac(Loyb;)Lnou;
    .locals 1

    new-instance v0, Llhp;

    invoke-direct {v0, p0, p1}, Llhp;-><init>(Llhq;Loyb;)V

    iget-object p1, p0, Llhq;->h:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public synthetic Y(Loyb;Llfu;)Lnou;
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Llhq;->l:Lmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmap;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnor;->a:Lnou;

    return-object v0

    :cond_0
    invoke-static {}, Llho;->h()V

    iget-object v3, v1, Llhq;->i:Llhz;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Llhq;->i:Llhz;

    iget-object v0, v0, Llhz;->a:Ljava/lang/Object;

    sget-object v4, Lloa;->j:Lloa;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnyf;

    const-string v5, "primes.battery.snapshot"

    invoke-static {}, Llho;->h()V

    move-object v6, v0

    check-cast v6, Llmp;

    iget-object v6, v6, Llmp;->b:Landroid/content/Context;

    invoke-static {v6}, Lktm;->d(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    check-cast v0, Llmp;

    iget-object v0, v0, Llmp;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    :goto_0
    const/4 v5, 0x1

    if-eqz v0, :cond_4

    array-length v6, v0

    if-nez v6, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    aget-byte v8, v0, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ne v8, v5, :cond_3

    add-int/lit8 v6, v6, -0x1

    :try_start_1
    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v8

    invoke-interface {v4, v0, v6, v8}, Lnyf;->b([BILnwh;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lnxd; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v4, Llmp;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->c()Lnaz;

    move-result-object v4

    const-string v6, "failure reading proto"

    const/16 v8, 0x11ce

    invoke-static {v4, v6, v8, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_1

    :cond_3
    sget-object v0, Llmp;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v4, "wrong header"

    const/16 v6, 0x11cd

    invoke-static {v0, v4, v6}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_4
    move-object v0, v2

    :goto_1
    check-cast v0, Lloa;

    if-nez v0, :cond_5

    move-object v4, v2

    goto/16 :goto_a

    :cond_5
    iget v4, v0, Lloa;->a:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_7

    iget v4, v0, Lloa;->g:I

    invoke-static {v4}, Loyb;->b(I)Loyb;

    move-result-object v4

    if-nez v4, :cond_6

    sget-object v4, Loyb;->a:Loyb;

    :cond_6
    move-object v14, v4

    goto :goto_2

    :cond_7
    move-object v14, v2

    :goto_2
    new-instance v4, Llhy;

    iget-object v6, v0, Lloa;->b:Loyl;

    if-nez v6, :cond_8

    sget-object v6, Loyl;->an:Loyl;

    move-object v9, v6

    goto :goto_3

    :cond_8
    move-object v9, v6

    :goto_3
    iget v6, v0, Lloa;->a:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_9

    iget-wide v10, v0, Lloa;->c:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v10, v6

    goto :goto_4

    :cond_9
    move-object v10, v2

    :goto_4
    iget v6, v0, Lloa;->a:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_a

    iget-wide v11, v0, Lloa;->d:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v11, v6

    goto :goto_5

    :cond_a
    move-object v11, v2

    :goto_5
    iget v6, v0, Lloa;->a:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_b

    iget-wide v12, v0, Lloa;->e:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v12, v6

    goto :goto_6

    :cond_b
    move-object v12, v2

    :goto_6
    iget v6, v0, Lloa;->a:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_c

    iget-wide v7, v0, Lloa;->f:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v13, v6

    goto :goto_7

    :cond_c
    move-object v13, v2

    :goto_7
    iget v6, v0, Lloa;->a:I

    and-int/lit8 v7, v6, 0x40

    if-eqz v7, :cond_d

    iget-object v7, v0, Lloa;->h:Ljava/lang/String;

    move-object v15, v7

    goto :goto_8

    :cond_d
    move-object v15, v2

    :goto_8
    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_f

    iget-object v0, v0, Lloa;->i:Loym;

    if-nez v0, :cond_e

    sget-object v0, Loym;->a:Loym;

    move-object/from16 v16, v0

    goto :goto_9

    :cond_e
    move-object/from16 v16, v0

    goto :goto_9

    :cond_f
    move-object/from16 v16, v2

    :goto_9
    move-object v8, v4

    invoke-direct/range {v8 .. v16}, Llhy;-><init>(Loyl;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Loyb;Ljava/lang/String;Loym;)V

    :goto_a
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, v1, Llhq;->j:Llhj;

    iget-object v3, v0, Llhj;->b:Ljava/lang/Object;

    invoke-interface {v3}, Lkrn;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v6, v0, Llhj;->b:Ljava/lang/Object;

    invoke-interface {v6}, Lkrn;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, v0, Llhj;->a:Ljava/lang/Object;

    check-cast v7, Lloi;

    iget-object v7, v7, Lloi;->c:Ljava/lang/Object;

    check-cast v7, Landroid/content/Context;

    const-string v8, "systemhealth"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/health/SystemHealthManager;

    if-eqz v7, :cond_10

    invoke-virtual {v7}, Landroid/os/health/SystemHealthManager;->takeMyUidSnapshot()Landroid/os/health/HealthStats;

    move-result-object v7

    goto :goto_b

    :cond_10
    move-object v7, v2

    :goto_b
    iget-object v8, v0, Llhj;->d:Ljava/lang/Object;

    check-cast v8, Llfo;

    invoke-virtual {v8}, Llfo;->a()Llhn;

    move-object/from16 v8, p1

    invoke-static {v3, v6, v7, v8, v0}, Llho;->c(Ljava/lang/Long;Ljava/lang/Long;Landroid/os/health/HealthStats;Loyb;Llhj;)Llhy;

    move-result-object v0

    iget-object v6, v1, Llhq;->i:Llhz;

    monitor-enter v6

    :try_start_3
    iget-object v3, v1, Llhq;->i:Llhz;

    sget-object v7, Lloa;->j:Lloa;

    invoke-virtual {v7}, Lnws;->O()Lnwn;

    move-result-object v7

    iget-object v8, v0, Llhy;->a:Loyl;

    if-eqz v8, :cond_12

    iget-object v9, v7, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_11

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_11
    iget-object v9, v7, Lnwn;->b:Lnws;

    check-cast v9, Lloa;

    iput-object v8, v9, Lloa;->b:Loyl;

    iget v8, v9, Lloa;->a:I

    or-int/2addr v8, v5

    iput v8, v9, Lloa;->a:I

    :cond_12
    iget-object v8, v0, Llhy;->b:Ljava/lang/Long;

    if-eqz v8, :cond_14

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, v7, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_13
    iget-object v10, v7, Lnwn;->b:Lnws;

    check-cast v10, Lloa;

    iget v11, v10, Lloa;->a:I

    or-int/lit8 v11, v11, 0x2

    iput v11, v10, Lloa;->a:I

    iput-wide v8, v10, Lloa;->c:J

    :cond_14
    iget-object v8, v0, Llhy;->c:Ljava/lang/Long;

    if-eqz v8, :cond_16

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, v7, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_15

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_15
    iget-object v10, v7, Lnwn;->b:Lnws;

    check-cast v10, Lloa;

    iget v11, v10, Lloa;->a:I

    or-int/lit8 v11, v11, 0x4

    iput v11, v10, Lloa;->a:I

    iput-wide v8, v10, Lloa;->d:J

    :cond_16
    iget-object v8, v0, Llhy;->d:Ljava/lang/Long;

    if-eqz v8, :cond_18

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, v7, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_17

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_17
    iget-object v10, v7, Lnwn;->b:Lnws;

    check-cast v10, Lloa;

    iget v11, v10, Lloa;->a:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v10, Lloa;->a:I

    iput-wide v8, v10, Lloa;->e:J

    :cond_18
    iget-object v8, v0, Llhy;->e:Ljava/lang/Long;

    if-eqz v8, :cond_1a

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, v7, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_19

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_19
    iget-object v10, v7, Lnwn;->b:Lnws;

    check-cast v10, Lloa;

    iget v11, v10, Lloa;->a:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v10, Lloa;->a:I

    iput-wide v8, v10, Lloa;->f:J

    :cond_1a
    iget-object v8, v0, Llhy;->f:Loyb;

    if-eqz v8, :cond_1c

    iget v8, v8, Loyb;->h:I

    iget-object v9, v7, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_1b

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_1b
    iget-object v9, v7, Lnwn;->b:Lnws;

    check-cast v9, Lloa;

    iget v10, v9, Lloa;->a:I

    or-int/lit8 v10, v10, 0x20

    iput v10, v9, Lloa;->a:I

    iput v8, v9, Lloa;->g:I

    :cond_1c
    iget-object v8, v0, Llhy;->g:Ljava/lang/String;

    if-eqz v8, :cond_1e

    iget-object v9, v7, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_1d

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_1d
    iget-object v9, v7, Lnwn;->b:Lnws;

    check-cast v9, Lloa;

    iget v10, v9, Lloa;->a:I

    or-int/lit8 v10, v10, 0x40

    iput v10, v9, Lloa;->a:I

    iput-object v8, v9, Lloa;->h:Ljava/lang/String;

    :cond_1e
    iget-object v8, v0, Llhy;->h:Loym;

    if-eqz v8, :cond_20

    iget-object v9, v7, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_1f

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_1f
    iget-object v9, v7, Lnwn;->b:Lnws;

    check-cast v9, Lloa;

    iput-object v8, v9, Lloa;->i:Loym;

    iget v8, v9, Lloa;->a:I

    or-int/lit16 v8, v8, 0x100

    iput v8, v9, Lloa;->a:I

    :cond_20
    iget-object v3, v3, Llhz;->a:Ljava/lang/Object;

    invoke-virtual {v7}, Lnwn;->i()Lnws;

    move-result-object v7

    check-cast v7, Lloa;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v7}, Lnxy;->J()[B

    move-result-object v7

    const-string v8, "primes.battery.snapshot"

    invoke-static {}, Llho;->h()V

    move-object v9, v3

    check-cast v9, Llmp;

    iget-object v9, v9, Llmp;->b:Landroid/content/Context;

    invoke-static {v9}, Lktm;->d(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_21

    const/4 v3, 0x0

    const/4 v11, 0x0

    goto :goto_c

    :cond_21
    array-length v9, v7

    add-int/lit8 v10, v9, 0x1

    new-array v10, v10, [B

    const/4 v11, 0x0

    aput-byte v5, v10, v11

    invoke-static {v7, v11, v10, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    check-cast v3, Llmp;

    iget-object v3, v3, Llmp;->c:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    :goto_c
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v3, :cond_23

    iget-object v0, v1, Llhq;->g:Llhe;

    invoke-virtual {v0, v1}, Llhe;->b(Llhd;)V

    iget-object v3, v1, Llhq;->i:Llhz;

    monitor-enter v3

    :try_start_4
    iget-object v0, v1, Llhq;->i:Llhz;

    iget-object v0, v0, Llhz;->a:Ljava/lang/Object;

    const-string v2, "primes.battery.snapshot"

    invoke-static {}, Llho;->h()V

    move-object v4, v0

    check-cast v4, Llmp;

    iget-object v4, v4, Llmp;->b:Landroid/content/Context;

    invoke-static {v4}, Lktm;->d(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_22

    check-cast v0, Llmp;

    iget-object v0, v0, Llmp;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_22
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Failure storing persistent snapshot and helper data"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_23
    iget-object v3, v1, Llhq;->j:Llhj;

    if-eqz v4, :cond_40

    iget-object v6, v4, Llhy;->d:Ljava/lang/Long;

    iget-object v7, v0, Llhy;->d:Ljava/lang/Long;

    invoke-static {v6, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    iget-object v6, v4, Llhy;->e:Ljava/lang/Long;

    iget-object v7, v0, Llhy;->e:Ljava/lang/Long;

    invoke-static {v6, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    iget-object v6, v4, Llhy;->b:Ljava/lang/Long;

    if-eqz v6, :cond_40

    iget-object v6, v4, Llhy;->c:Ljava/lang/Long;

    if-eqz v6, :cond_40

    iget-object v6, v0, Llhy;->b:Ljava/lang/Long;

    if-eqz v6, :cond_40

    iget-object v7, v0, Llhy;->c:Ljava/lang/Long;

    if-nez v7, :cond_24

    goto/16 :goto_16

    :cond_24
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v4, Llhy;->b:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v8, v0, Llhy;->c:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, v4, Llhy;->c:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v8, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v8, v12

    if-gtz v10, :cond_25

    goto/16 :goto_16

    :cond_25
    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v14, 0x19

    cmp-long v10, v6, v14

    if-ltz v10, :cond_26

    long-to-double v8, v8

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    const-wide v8, 0x3f023456789abcdfL    # 3.472222222222222E-5

    cmpg-double v10, v6, v8

    if-gtz v10, :cond_40

    :cond_26
    iget-object v3, v3, Llhj;->a:Ljava/lang/Object;

    iget-object v6, v0, Llhy;->a:Loyl;

    iget-object v7, v4, Llhy;->a:Loyl;

    invoke-static {v6, v7}, Lljr;->j(Loyl;Loyl;)Loyl;

    move-result-object v6

    if-nez v6, :cond_27

    move-object v3, v2

    goto/16 :goto_14

    :cond_27
    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnwn;

    invoke-virtual {v7, v6}, Lnwn;->s(Lnws;)V

    check-cast v3, Lloi;

    iget-object v3, v3, Lloi;->b:Ljava/lang/Object;

    iget-object v6, v7, Lnwn;->b:Lnws;

    check-cast v6, Loyl;

    iget-object v6, v6, Loyl;->g:Lnxa;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v6, 0x0

    :goto_d
    iget-object v8, v7, Lnwn;->b:Lnws;

    check-cast v8, Loyl;

    iget-object v8, v8, Loyl;->g:Lnxa;

    invoke-interface {v8}, Lnxa;->size()I

    move-result v8

    if-ge v6, v8, :cond_28

    invoke-virtual {v7, v6}, Lnwn;->V(I)Loyk;

    move-result-object v8

    move-object v9, v3

    check-cast v9, Llhr;

    invoke-virtual {v9, v8}, Llhr;->b(Loyk;)Loyk;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lnwn;->au(ILoyk;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_28
    iget-object v6, v7, Lnwn;->b:Lnws;

    check-cast v6, Loyl;

    iget-object v6, v6, Loyl;->h:Lnxa;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v6, 0x0

    :goto_e
    iget-object v8, v7, Lnwn;->b:Lnws;

    check-cast v8, Loyl;

    iget-object v8, v8, Loyl;->h:Lnxa;

    invoke-interface {v8}, Lnxa;->size()I

    move-result v8

    if-ge v6, v8, :cond_29

    invoke-virtual {v7, v6}, Lnwn;->W(I)Loyk;

    move-result-object v8

    move-object v9, v3

    check-cast v9, Llhr;

    invoke-virtual {v9, v8}, Llhr;->b(Loyk;)Loyk;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lnwn;->av(ILoyk;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_29
    iget-object v6, v7, Lnwn;->b:Lnws;

    check-cast v6, Loyl;

    iget-object v6, v6, Loyl;->i:Lnxa;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v6, 0x0

    :goto_f
    iget-object v8, v7, Lnwn;->b:Lnws;

    check-cast v8, Loyl;

    iget-object v8, v8, Loyl;->i:Lnxa;

    invoke-interface {v8}, Lnxa;->size()I

    move-result v8

    if-ge v6, v8, :cond_2a

    invoke-virtual {v7, v6}, Lnwn;->X(I)Loyk;

    move-result-object v8

    move-object v9, v3

    check-cast v9, Llhr;

    invoke-virtual {v9, v8}, Llhr;->b(Loyk;)Loyk;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lnwn;->aw(ILoyk;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_2a
    iget-object v6, v7, Lnwn;->b:Lnws;

    check-cast v6, Loyl;

    iget-object v6, v6, Loyl;->j:Lnxa;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v6, 0x0

    :goto_10
    iget-object v8, v7, Lnwn;->b:Lnws;

    check-cast v8, Loyl;

    iget-object v8, v8, Loyl;->j:Lnxa;

    invoke-interface {v8}, Lnxa;->size()I

    move-result v8

    if-ge v6, v8, :cond_2b

    invoke-virtual {v7, v6}, Lnwn;->Y(I)Loyk;

    move-result-object v8

    move-object v9, v3

    check-cast v9, Llhr;

    invoke-virtual {v9, v8}, Llhr;->b(Loyk;)Loyk;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lnwn;->at(ILoyk;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_2b
    iget-object v6, v7, Lnwn;->b:Lnws;

    check-cast v6, Loyl;

    iget-object v6, v6, Loyl;->k:Lnxa;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v6, 0x0

    :goto_11
    iget-object v8, v7, Lnwn;->b:Lnws;

    check-cast v8, Loyl;

    iget-object v8, v8, Loyl;->k:Lnxa;

    invoke-interface {v8}, Lnxa;->size()I

    move-result v8

    if-ge v6, v8, :cond_2c

    invoke-virtual {v7, v6}, Lnwn;->Z(I)Loyk;

    move-result-object v8

    move-object v9, v3

    check-cast v9, Llhr;

    invoke-virtual {v9, v8}, Llhr;->b(Loyk;)Loyk;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lnwn;->aq(ILoyk;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_2c
    iget-object v6, v7, Lnwn;->b:Lnws;

    check-cast v6, Loyl;

    iget-object v6, v6, Loyl;->l:Lnxa;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    const/4 v6, 0x0

    :goto_12
    iget-object v8, v7, Lnwn;->b:Lnws;

    check-cast v8, Loyl;

    iget-object v8, v8, Loyl;->l:Lnxa;

    invoke-interface {v8}, Lnxa;->size()I

    move-result v8

    if-ge v6, v8, :cond_2d

    invoke-virtual {v7, v6}, Lnwn;->aa(I)Loyk;

    move-result-object v8

    move-object v9, v3

    check-cast v9, Llhr;

    invoke-virtual {v9, v8}, Llhr;->b(Loyk;)Loyk;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lnwn;->an(ILoyk;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_2d
    iget-object v6, v7, Lnwn;->b:Lnws;

    check-cast v6, Loyl;

    iget-object v6, v6, Loyl;->n:Lnxa;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    :goto_13
    iget-object v6, v7, Lnwn;->b:Lnws;

    check-cast v6, Loyl;

    iget-object v6, v6, Loyl;->n:Lnxa;

    invoke-interface {v6}, Lnxa;->size()I

    move-result v6

    if-ge v11, v6, :cond_2e

    invoke-virtual {v7, v11}, Lnwn;->ab(I)Loyk;

    move-result-object v6

    move-object v8, v3

    check-cast v8, Llhr;

    invoke-virtual {v8, v6}, Llhr;->b(Loyk;)Loyk;

    move-result-object v6

    invoke-virtual {v7, v11, v6}, Lnwn;->ap(ILoyk;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    :cond_2e
    invoke-virtual {v7}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Loyl;

    :goto_14
    if-nez v3, :cond_2f

    :goto_15
    goto/16 :goto_16

    :cond_2f
    iget v6, v3, Loyl;->a:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_3f

    iget-wide v6, v3, Loyl;->c:J

    cmp-long v8, v6, v12

    if-gtz v8, :cond_30

    goto :goto_15

    :cond_30
    sget-object v2, Loyc;->k:Loyc;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    iget-object v6, v0, Llhy;->b:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v4, Llhy;->b:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v8, v2, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_31

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_31
    iget-object v8, v2, Lnwn;->b:Lnws;

    move-object v9, v8

    check-cast v9, Loyc;

    iget v10, v9, Loyc;->a:I

    or-int/lit8 v10, v10, 0x40

    iput v10, v9, Loyc;->a:I

    iput-wide v6, v9, Loyc;->h:J

    iget-object v6, v4, Llhy;->f:Loyb;

    if-eqz v6, :cond_33

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_32

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_32
    iget-object v7, v2, Lnwn;->b:Lnws;

    check-cast v7, Loyc;

    iget v6, v6, Loyb;->h:I

    iput v6, v7, Loyc;->b:I

    iget v6, v7, Loyc;->a:I

    or-int/2addr v6, v5

    iput v6, v7, Loyc;->a:I

    :cond_33
    iget-object v6, v4, Llhy;->g:Ljava/lang/String;

    if-eqz v6, :cond_35

    iget-object v7, v2, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_34

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_34
    iget-object v7, v2, Lnwn;->b:Lnws;

    check-cast v7, Loyc;

    iget v8, v7, Loyc;->a:I

    or-int/lit8 v8, v8, 0x8

    iput v8, v7, Loyc;->a:I

    iput-object v6, v7, Loyc;->e:Ljava/lang/String;

    :cond_35
    iget-object v4, v4, Llhy;->h:Loym;

    if-eqz v4, :cond_37

    iget-object v6, v2, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_36

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_36
    iget-object v6, v2, Lnwn;->b:Lnws;

    check-cast v6, Loyc;

    iput-object v4, v6, Loyc;->f:Loym;

    iget v4, v6, Loyc;->a:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v6, Loyc;->a:I

    :cond_37
    iget-object v4, v0, Llhy;->f:Loyb;

    if-eqz v4, :cond_39

    iget-object v6, v2, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_38

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_38
    iget-object v6, v2, Lnwn;->b:Lnws;

    check-cast v6, Loyc;

    iget v4, v4, Loyb;->h:I

    iput v4, v6, Loyc;->g:I

    iget v4, v6, Loyc;->a:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v6, Loyc;->a:I

    :cond_39
    iget-object v4, v0, Llhy;->b:Ljava/lang/Long;

    if-eqz v4, :cond_3b

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_3a
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Loyc;

    iget v8, v4, Loyc;->a:I

    or-int/lit16 v8, v8, 0x100

    iput v8, v4, Loyc;->a:I

    iput-wide v6, v4, Loyc;->j:J

    :cond_3b
    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_3c
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Loyc;

    iput-object v3, v4, Loyc;->i:Loyl;

    iget v3, v4, Loyc;->a:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v4, Loyc;->a:I

    sget-object v3, Lozv;->u:Lozv;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    sget-object v4, Loyd;->c:Loyd;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    iget-object v6, v4, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_3d

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_3d
    iget-object v6, v4, Lnwn;->b:Lnws;

    check-cast v6, Loyd;

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Loyc;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v6, Loyd;->b:Loyc;

    iget v2, v6, Loyd;->a:I

    or-int/2addr v2, v5

    iput v2, v6, Loyd;->a:I

    iget-object v2, v3, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_3e
    iget-object v2, v3, Lnwn;->b:Lnws;

    check-cast v2, Lozv;

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Loyd;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v2, Lozv;->i:Loyd;

    iget v4, v2, Lozv;->a:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v2, Lozv;->a:I

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lozv;

    goto :goto_16

    :cond_3f
    goto :goto_16

    :cond_40
    :goto_16
    if-nez v2, :cond_41

    sget-object v0, Lnor;->a:Lnou;

    return-object v0

    :cond_41
    iget-object v3, v1, Llhq;->l:Lmap;

    invoke-static {}, Llif;->a()Llie;

    move-result-object v4

    iget-object v6, v0, Llhy;->g:Ljava/lang/String;

    iput-object v6, v4, Llie;->b:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Llie;->c(Z)V

    invoke-virtual {v4, v2}, Llie;->e(Lozv;)V

    iget-object v0, v0, Llhy;->h:Loym;

    iput-object v0, v4, Llie;->d:Ljava/lang/Object;

    invoke-virtual {v4}, Llie;->a()Llif;

    move-result-object v0

    invoke-virtual {v3, v0}, Lmap;->b(Llif;)Lnou;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_18

    :goto_17
    throw v0

    :goto_18
    goto :goto_17
.end method

.method public Z()Lnou;
    .locals 2

    iget-object v0, p0, Llhq;->f:Landroid/content/Context;

    invoke-static {v0}, Lktm;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnor;->a:Lnou;

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Llhq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    invoke-static {v0}, Lmoz;->p(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Loyb;->b:Loyb;

    invoke-direct {p0, v0}, Llhq;->ac(Loyb;)Lnou;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Llhq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Llhq;->aa()Lnou;

    :cond_0
    return-void
.end method

.method public aa()Lnou;
    .locals 3

    iget-object v0, p0, Llhq;->f:Landroid/content/Context;

    invoke-static {v0}, Lktm;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnor;->a:Lnou;

    return-object v0

    :cond_0
    iget-object v0, p0, Llhq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Llhq;->e:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "App is already in the foreground."

    const/16 v2, 0x118a

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-static {}, Lnsy;->z()Lnou;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Loyb;->c:Loyb;

    invoke-direct {p0, v0}, Llhq;->ac(Loyb;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public ab()V
    .locals 1

    iget-object v0, p0, Llhq;->g:Llhe;

    invoke-virtual {v0, p0}, Llhe;->a(Llhd;)V

    return-void
.end method

.method public b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Llhq;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Llhq;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Llhq;->Z()Lnou;

    return-void
.end method
