.class public final Lljg;
.super Lljb;

# interfaces
.implements Llil;
.implements Llgt;
.implements Llha;
.implements Llgy;
.implements Llgw;


# static fields
.field public static final a:Lnak;


# instance fields
.field volatile b:Llfu;

.field public final c:Logd;

.field public final d:Logd;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Loiw;

.field public final g:Loiw;

.field public final h:Llix;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Z

.field private final k:Landroid/content/Context;

.field private final l:Ljava/util/concurrent/Executor;

.field private final m:Lmqp;

.field private final n:Llhe;

.field private final o:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final p:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final q:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final s:Loiw;

.field private final t:Lmap;

.field private final u:Llhz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/crash/CrashMetricServiceImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lljg;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Llij;Landroid/content/Context;Ljava/util/concurrent/Executor;Logd;Lmqp;Llhe;Llhz;Logd;Lmqp;Loiw;Loiw;Loiw;Llhj;[B)V
    .locals 1

    invoke-direct {p0}, Lljb;-><init>()V

    new-instance p14, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p14}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p14, p0, Lljg;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p14, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p14, p0, Lljg;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p14, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p14, p0, Lljg;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p14, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p14, p0, Lljg;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p14, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p14, p0, Lljg;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p14, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p14, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p14, p0, Lljg;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lljg;->c:Logd;

    iput-object p5, p0, Lljg;->m:Lmqp;

    iput-object p6, p0, Lljg;->n:Llhe;

    iput-object p7, p0, Lljg;->u:Llhz;

    iput-object p8, p0, Lljg;->d:Logd;

    sget-object p5, Lnnv;->a:Lnnv;

    const/4 p6, 0x0

    invoke-virtual {p1, p5, p4, p6}, Llij;->b(Ljava/util/concurrent/Executor;Logd;Loiw;)Lmap;

    move-result-object p1

    iput-object p1, p0, Lljg;->t:Lmap;

    iput-object p2, p0, Lljg;->k:Landroid/content/Context;

    iput-object p3, p0, Lljg;->l:Ljava/util/concurrent/Executor;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p9, p1}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lljg;->j:Z

    iput-object p10, p0, Lljg;->s:Loiw;

    iput-object p11, p0, Lljg;->f:Loiw;

    iput-object p12, p0, Lljg;->g:Loiw;

    new-instance p3, Lljd;

    invoke-direct {p3, p2}, Lljd;-><init>(Landroid/content/Context;)V

    new-instance p4, Lljf;

    invoke-direct {p4}, Lljf;-><init>()V

    new-instance p1, Llix;

    iget-object p2, p13, Llhj;->a:Ljava/lang/Object;

    invoke-interface {p2}, Loiw;->get()Ljava/lang/Object;

    move-result-object p2

    move-object p5, p2

    check-cast p5, Ljava/util/concurrent/Executor;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p13, Llhj;->b:Ljava/lang/Object;

    check-cast p2, Logn;

    invoke-virtual {p2}, Logn;->a()Logd;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p13, Llhj;->d:Ljava/lang/Object;

    check-cast p2, Llik;

    invoke-virtual {p2}, Llik;->a()Llij;

    move-result-object p7

    iget-object p8, p13, Llhj;->c:Ljava/lang/Object;

    move-object p2, p1

    invoke-direct/range {p2 .. p8}, Llix;-><init>(Lmrl;Lmrl;Ljava/util/concurrent/Executor;Logd;Llij;Loiw;)V

    iput-object p1, p0, Lljg;->h:Llix;

    return-void
.end method

.method private final j(ILjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    new-instance v0, Lljc;

    invoke-direct {v0, p0, p2, p1}, Lljc;-><init>(Lljg;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    iget-object p1, p0, Lljg;->l:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 1

    new-instance p1, Lcna;

    const/16 v0, 0xa

    invoke-direct {p1, p0, v0}, Lcna;-><init>(Lljg;I)V

    iget-object v0, p0, Lljg;->l:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    return-void
.end method

.method public final ab()V
    .locals 2

    iget-object v0, p0, Lljg;->m:Lmqp;

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lljk;

    invoke-interface {v0, p0}, Lljk;->a(Lljb;)V

    iget-object v0, p0, Lljg;->n:Llhe;

    invoke-virtual {v0, p0}, Llhe;->a(Llhd;)V

    iget-object v0, p0, Lljg;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lljg;->j(ILjava/util/concurrent/atomic/AtomicInteger;)V

    new-instance v0, Lcna;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcna;-><init>(Lljg;I)V

    iget-object v1, p0, Lljg;->l:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    iget-boolean v0, p0, Lljg;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lljg;->e()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lljg;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lljg;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x4

    invoke-direct {p0, p2, p1}, Lljg;->j(ILjava/util/concurrent/atomic/AtomicInteger;)V

    :cond_0
    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Llfu;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Llfu;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Llfu;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Llfu;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lljg;->b:Llfu;

    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lljg;->b:Llfu;

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lljg;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Llje;

    invoke-direct {v1, p0, v0}, Llje;-><init>(Lljg;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method public final f(Lozh;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v0, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    sget-object v0, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    iget-object v0, v1, Lljg;->c:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lliv;

    invoke-virtual {v3}, Lliv;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lljg;->t:Lmap;

    iget-object v0, v0, Lmap;->d:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llgs;

    invoke-interface {v0}, Llgs;->a()Llgr;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_1
    sget-object v0, Llgr;->a:Llgr;

    move-object v4, v0

    :goto_0
    iget-object v0, v1, Lljg;->g:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lliz;

    iget-boolean v0, v0, Lliz;->a:Z

    const/4 v5, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_15

    iget-object v0, v1, Lljg;->h:Llix;

    sget-object v11, Lozg;->d:Lozg;

    invoke-virtual {v11}, Lnws;->O()Lnwn;

    move-result-object v11

    iget-object v12, v0, Llix;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v12

    if-nez v12, :cond_3

    iget-object v0, v11, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v11}, Lnwn;->p()V

    :cond_2
    iget-object v0, v11, Lnwn;->b:Lnws;

    check-cast v0, Lozg;

    iput v10, v0, Lozg;->b:I

    iget v12, v0, Lozg;->a:I

    or-int/2addr v12, v10

    iput v12, v0, Lozg;->a:I

    invoke-virtual {v11}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lozg;

    goto/16 :goto_5

    :cond_3
    iget-object v12, v0, Llix;->d:Loiw;

    invoke-interface {v12}, Loiw;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lliz;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    iget-wide v6, v0, Llix;->f:J

    sub-long/2addr v13, v6

    iget v6, v12, Lliz;->d:I

    int-to-long v6, v6

    const/4 v9, 0x2

    cmp-long v16, v13, v6

    if-lez v16, :cond_5

    iget-object v0, v11, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v11}, Lnwn;->p()V

    :cond_4
    iget-object v0, v11, Lnwn;->b:Lnws;

    check-cast v0, Lozg;

    iput v9, v0, Lozg;->b:I

    iget v6, v0, Lozg;->a:I

    or-int/2addr v6, v10

    iput v6, v0, Lozg;->a:I

    invoke-virtual {v11}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lozg;

    goto/16 :goto_5

    :cond_5
    iget-object v6, v0, Llix;->a:Lmrl;

    invoke-interface {v6}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v6

    iget-object v0, v0, Llix;->b:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v6, Lmqp;

    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v7

    if-eqz v7, :cond_10

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_4

    :cond_6
    new-instance v7, Lliw;

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v7, v6, v0}, Lliw;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Lliw;->a()I

    move-result v0

    iget-object v6, v11, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v11}, Lnwn;->p()V

    :cond_7
    iget-object v6, v11, Lnwn;->b:Lnws;

    move-object v13, v6

    check-cast v13, Lozg;

    iget v14, v13, Lozg;->a:I

    or-int/2addr v9, v14

    iput v9, v13, Lozg;->a:I

    iput v0, v13, Lozg;->c:I

    add-int/lit8 v9, v0, 0x1

    iget v0, v12, Lliz;->c:I

    if-lt v9, v0, :cond_9

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v11}, Lnwn;->p()V

    :cond_8
    iget-object v0, v11, Lnwn;->b:Lnws;

    check-cast v0, Lozg;

    iput v8, v0, Lozg;->b:I

    iget v6, v0, Lozg;->a:I

    or-int/2addr v6, v10

    iput v6, v0, Lozg;->a:I

    invoke-virtual {v11}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lozg;

    goto/16 :goto_5

    :cond_9
    invoke-virtual {v7}, Lliw;->c()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    iget v0, v7, Lliw;->c:I

    add-int/2addr v0, v10

    iput v0, v7, Lliw;->c:I

    sget-object v0, Llja;->c:Llja;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget v6, v7, Lliw;->c:I

    iget-object v13, v0, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_b

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_b
    iget-object v13, v0, Lnwn;->b:Lnws;

    check-cast v13, Llja;

    iget v14, v13, Llja;->a:I

    or-int/2addr v14, v10

    iput v14, v13, Llja;->a:I

    iput v6, v13, Llja;->b:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Llja;

    const/4 v13, 0x0

    :goto_1
    :try_start_0
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-virtual {v7}, Lliw;->b()Ljava/io/File;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v6, v14}, Lnve;->I(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v15, v0

    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v14, v0

    :try_start_4
    invoke-static {v15, v14}, Lljr;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_2
    throw v15
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-object v6, Lliw;->a:Lnak;

    invoke-virtual {v6}, Lnaf;->c()Lnaz;

    move-result-object v6

    const-string v7, "failed to write counter to disk."

    const/16 v13, 0x1198

    invoke-static {v6, v7, v13, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    if-nez v13, :cond_c

    iget-object v0, v7, Lliw;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const/4 v13, 0x1

    goto :goto_1

    :cond_c
    :goto_3
    iget v0, v12, Lliz;->b:I

    if-lt v9, v0, :cond_e

    iget-object v0, v11, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v11}, Lnwn;->p()V

    :cond_d
    iget-object v0, v11, Lnwn;->b:Lnws;

    check-cast v0, Lozg;

    iput v5, v0, Lozg;->b:I

    iget v6, v0, Lozg;->a:I

    or-int/2addr v6, v10

    iput v6, v0, Lozg;->a:I

    invoke-virtual {v11}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lozg;

    goto :goto_5

    :cond_e
    iget-object v0, v11, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v11}, Lnwn;->p()V

    :cond_f
    iget-object v0, v11, Lnwn;->b:Lnws;

    check-cast v0, Lozg;

    const/4 v6, 0x3

    iput v6, v0, Lozg;->b:I

    iget v6, v0, Lozg;->a:I

    or-int/2addr v6, v10

    iput v6, v0, Lozg;->a:I

    invoke-virtual {v11}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lozg;

    goto :goto_5

    :cond_10
    :goto_4
    iget-object v0, v11, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v11}, Lnwn;->p()V

    :cond_11
    iget-object v0, v11, Lnwn;->b:Lnws;

    check-cast v0, Lozg;

    const/4 v6, 0x6

    iput v6, v0, Lozg;->b:I

    iget v6, v0, Lozg;->a:I

    or-int/2addr v6, v10

    iput v6, v0, Lozg;->a:I

    invoke-virtual {v11}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lozg;

    :goto_5
    invoke-virtual {v2, v8}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnwn;

    invoke-virtual {v6, v2}, Lnwn;->s(Lnws;)V

    iget-object v2, v6, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_12
    iget-object v2, v6, Lnwn;->b:Lnws;

    check-cast v2, Lozh;

    sget-object v7, Lozh;->l:Lozh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v2, Lozh;->k:Lozg;

    iget v7, v2, Lozh;->a:I

    or-int/lit16 v7, v7, 0x800

    iput v7, v2, Lozh;->a:I

    invoke-virtual {v6}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lozh;

    iget v0, v0, Lozg;->b:I

    invoke-static {v0}, Lljz;->v(I)I

    move-result v0

    if-nez v0, :cond_13

    const/4 v9, 0x0

    goto :goto_6

    :cond_13
    if-ne v0, v8, :cond_14

    const/4 v9, 0x1

    goto :goto_6

    :cond_14
    const/4 v9, 0x0

    goto :goto_6

    :cond_15
    const/4 v9, 0x0

    :goto_6
    :try_start_5
    invoke-static {}, Llho;->k()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v1, Lljg;->s:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lljh;

    iget v0, v0, Lljh;->a:I

    int-to-long v6, v0

    goto :goto_7

    :cond_16
    iget-object v0, v1, Lljg;->s:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lljh;

    iget v0, v0, Lljh;->b:I

    int-to-long v6, v0

    :goto_7
    iget-object v0, v1, Lljg;->t:Lmap;

    invoke-static {}, Llif;->a()Llie;

    move-result-object v11

    sget-object v12, Lozv;->u:Lozv;

    invoke-virtual {v12}, Lnws;->O()Lnwn;

    move-result-object v12

    iget-object v13, v12, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_17

    invoke-virtual {v12}, Lnwn;->p()V

    :cond_17
    iget-object v13, v12, Lnwn;->b:Lnws;

    check-cast v13, Lozv;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v13, Lozv;->g:Lozh;

    iget v2, v13, Lozv;->a:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v13, Lozv;->a:I

    invoke-virtual {v12}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lozv;

    invoke-virtual {v11, v2}, Llie;->e(Lozv;)V

    const/4 v2, 0x0

    iput-object v2, v11, Llie;->d:Ljava/lang/Object;

    iput-object v4, v11, Llie;->g:Ljava/lang/Object;

    iget v2, v3, Lliv;->b:I

    invoke-virtual {v11, v2}, Llie;->b(I)V

    invoke-virtual {v11}, Llie;->a()Llif;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmap;->b(Llif;)Lnou;

    move-result-object v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v2}, Lnou;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_8
    iget-object v0, v1, Lljg;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    if-lez v0, :cond_18

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lljg;->g(ILliv;)Lnou;

    goto :goto_8

    :cond_18
    iget-object v0, v1, Lljg;->g:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lliz;

    iget-boolean v0, v0, Lliz;->a:Z

    if-nez v0, :cond_19

    goto :goto_9

    :cond_19
    iget-object v0, v1, Lljg;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, v1, Lljg;->g:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lliz;

    iget v0, v0, Lliz;->e:F

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v3, v0}, Lljg;->h(ILliv;F)Lnou;

    :cond_1a
    :goto_9
    iget-object v0, v1, Lljg;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    if-gtz v0, :cond_1d

    :goto_a
    iget-object v0, v1, Lljg;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    if-lez v0, :cond_1b

    invoke-virtual {v1, v8, v3}, Lljg;->g(ILliv;)Lnou;

    goto :goto_a

    :cond_1b
    if-eqz v9, :cond_1c

    iget-object v0, v3, Lliv;->c:Lmqp;

    :cond_1c
    return-void

    :cond_1d
    invoke-virtual {v1, v5, v3}, Lljg;->g(ILliv;)Lnou;

    goto :goto_9
.end method

.method public final g(ILliv;)Lnou;
    .locals 2

    iget v0, p2, Lliv;->a:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lljg;->h(ILliv;F)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final h(ILliv;F)Lnou;
    .locals 6

    invoke-virtual {p2}, Lliv;->b()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lnor;->a:Lnou;

    return-object p1

    :cond_0
    iget-object p2, p0, Lljg;->u:Llhz;

    invoke-virtual {p2, p3}, Llhz;->a(F)Llmt;

    move-result-object p2

    iget-object v0, p2, Llmt;->b:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget p2, p2, Llmt;->a:F

    cmpg-float p2, v0, p2

    if-gez p2, :cond_4

    iget-object p2, p0, Lljg;->t:Lmap;

    invoke-static {}, Llif;->a()Llie;

    move-result-object v0

    sget-object v1, Lozv;->u:Lozv;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    sget-object v2, Lozt;->d:Lozt;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, p3

    iget-object p3, v2, Lnwn;->b:Lnws;

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_1
    float-to-int p3, v3

    iget-object v3, v2, Lnwn;->b:Lnws;

    move-object v4, v3

    check-cast v4, Lozt;

    iget v5, v4, Lozt;->a:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lozt;->a:I

    iput p3, v4, Lozt;->c:I

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_2
    iget-object p3, v2, Lnwn;->b:Lnws;

    check-cast p3, Lozt;

    add-int/lit8 p1, p1, -0x1

    iput p1, p3, Lozt;->b:I

    iget p1, p3, Lozt;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p3, Lozt;->a:I

    iget-object p1, v1, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lozv;

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object p3

    check-cast p3, Lozt;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p1, Lozv;->q:Lozt;

    iget p3, p1, Lozv;->a:I

    const/high16 v2, 0x2000000

    or-int/2addr p3, v2

    iput p3, p1, Lozv;->a:I

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lozv;

    invoke-virtual {v0, p1}, Llie;->e(Lozv;)V

    invoke-virtual {v0}, Llie;->a()Llif;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmap;->b(Llif;)Lnou;

    move-result-object p1

    return-object p1

    :cond_4
    sget-object p1, Lnor;->a:Lnou;

    return-object p1
.end method

.method public final i()Lnwn;
    .locals 5

    sget-object v0, Lozh;->l:Lozh;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lozh;

    iget v2, v1, Lozh;->a:I

    const/4 v3, 0x1

    or-int/2addr v2, v3

    iput v2, v1, Lozh;->a:I

    iput-boolean v3, v1, Lozh;->b:Z

    iget-object v1, p0, Lljg;->b:Llfu;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, v1, Llfu;->a:Ljava/lang/String;

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lozh;

    iget v4, v2, Lozh;->a:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v2, Lozh;->a:I

    iput-object v1, v2, Lozh;->d:Ljava/lang/String;

    :cond_3
    :try_start_0
    sget-object v1, Lozb;->c:Lozb;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, p0, Lljg;->k:Landroid/content/Context;

    invoke-static {v2}, Llhg;->b(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Llho;->e(Z)Loza;

    move-result-object v2

    iget-object v4, v1, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_4
    iget-object v4, v1, Lnwn;->b:Lnws;

    check-cast v4, Lozb;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v4, Lozb;->b:Loza;

    iget v2, v4, Lozb;->a:I

    or-int/2addr v2, v3

    iput v2, v4, Lozb;->a:I

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lozh;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lozb;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Lozh;->c:Lozb;

    iget v1, v2, Lozh;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v2, Lozh;->a:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lljg;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    const-string v3, "Failed to get process stats."

    const/16 v4, 0x119b

    invoke-static {v2, v3, v4, v1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method
