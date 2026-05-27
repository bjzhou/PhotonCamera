.class public final Lazd;
.super Laxw;


# static fields
.field public static final a:Ljava/lang/Object;

.field private static l:Lazd;

.field private static m:Lazd;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Laxd;

.field public d:Landroidx/work/impl/WorkDatabase;

.field public e:Ljava/util/List;

.field public f:Layp;

.field public g:Z

.field public h:Landroid/content/BroadcastReceiver$PendingResult;

.field public final i:Lbbc;

.field public j:Lbkb;

.field public k:Lva;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkManagerImpl"

    invoke-static {v0}, Laxq;->b(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lazd;->l:Lazd;

    sput-object v0, Lazd;->m:Lazd;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lazd;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Laxd;Lva;[B)V
    .locals 13

    move-object v1, p0

    move-object v0, p2

    move-object/from16 v8, p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v8, Lva;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    const-class v2, Landroidx/work/impl/WorkDatabase;

    new-instance v6, Laps;

    invoke-direct {v6, v3, v2, v5}, Laps;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v6}, Laps;->c()V

    goto :goto_0

    :cond_0
    const-class v2, Landroidx/work/impl/WorkDatabase;

    const-string v6, "androidx.work.workdb"

    invoke-static {v3, v2, v6}, Laek;->g(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Laps;

    move-result-object v6

    new-instance v2, Layv;

    invoke-direct {v2, v3}, Layv;-><init>(Landroid/content/Context;)V

    iput-object v2, v6, Laps;->c:Laqs;

    :goto_0
    iput-object v4, v6, Laps;->b:Ljava/util/concurrent/Executor;

    sget-object v2, Layb;->a:Layb;

    iget-object v4, v6, Laps;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    new-array v4, v2, [Laqc;

    sget-object v7, Layh;->c:Layh;

    const/4 v9, 0x0

    aput-object v7, v4, v9

    invoke-virtual {v6, v4}, Laps;->b([Laqc;)V

    new-array v4, v2, [Laqc;

    new-instance v7, Layq;

    const/4 v10, 0x3

    const/4 v11, 0x2

    invoke-direct {v7, v3, v11, v10}, Layq;-><init>(Landroid/content/Context;II)V

    aput-object v7, v4, v9

    invoke-virtual {v6, v4}, Laps;->b([Laqc;)V

    new-array v4, v2, [Laqc;

    sget-object v7, Layi;->c:Layi;

    aput-object v7, v4, v9

    invoke-virtual {v6, v4}, Laps;->b([Laqc;)V

    new-array v4, v2, [Laqc;

    sget-object v7, Layj;->c:Layj;

    aput-object v7, v4, v9

    invoke-virtual {v6, v4}, Laps;->b([Laqc;)V

    new-array v4, v2, [Laqc;

    new-instance v7, Layq;

    const/4 v10, 0x5

    const/4 v12, 0x6

    invoke-direct {v7, v3, v10, v12}, Layq;-><init>(Landroid/content/Context;II)V

    aput-object v7, v4, v9

    invoke-virtual {v6, v4}, Laps;->b([Laqc;)V

    new-array v4, v2, [Laqc;

    sget-object v7, Layk;->c:Layk;

    aput-object v7, v4, v9

    invoke-virtual {v6, v4}, Laps;->b([Laqc;)V

    new-array v4, v2, [Laqc;

    sget-object v7, Layl;->c:Layl;

    aput-object v7, v4, v9

    invoke-virtual {v6, v4}, Laps;->b([Laqc;)V

    new-array v4, v2, [Laqc;

    sget-object v7, Laym;->c:Laym;

    aput-object v7, v4, v9

    invoke-virtual {v6, v4}, Laps;->b([Laqc;)V

    new-array v4, v2, [Laqc;

    new-instance v7, Laze;

    invoke-direct {v7, v3}, Laze;-><init>(Landroid/content/Context;)V

    aput-object v7, v4, v9

    invoke-virtual {v6, v4}, Laps;->b([Laqc;)V

    new-array v4, v2, [Laqc;

    new-instance v7, Layq;

    const/16 v10, 0xa

    const/16 v12, 0xb

    invoke-direct {v7, v3, v10, v12}, Layq;-><init>(Landroid/content/Context;II)V

    aput-object v7, v4, v9

    invoke-virtual {v6, v4}, Laps;->b([Laqc;)V

    new-array v3, v2, [Laqc;

    sget-object v4, Layd;->c:Layd;

    aput-object v4, v3, v9

    invoke-virtual {v6, v3}, Laps;->b([Laqc;)V

    new-array v3, v2, [Laqc;

    sget-object v4, Laye;->c:Laye;

    aput-object v4, v3, v9

    invoke-virtual {v6, v3}, Laps;->b([Laqc;)V

    new-array v3, v2, [Laqc;

    sget-object v4, Layf;->c:Layf;

    aput-object v4, v3, v9

    invoke-virtual {v6, v3}, Laps;->b([Laqc;)V

    new-array v3, v2, [Laqc;

    sget-object v4, Layg;->c:Layg;

    aput-object v4, v3, v9

    invoke-virtual {v6, v3}, Laps;->b([Laqc;)V

    invoke-virtual {v6}, Laps;->d()V

    invoke-virtual {v6}, Laps;->a()Lapt;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroidx/work/impl/WorkDatabase;

    invoke-direct {p0}, Laxw;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Laxq;

    invoke-direct {v4}, Laxq;-><init>()V

    sget-object v6, Laxq;->a:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sput-object v4, Laxq;->b:Laxq;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v4, Lbbc;

    invoke-direct {v4, v3, v8, v5}, Lbbc;-><init>(Landroid/content/Context;Lva;[B)V

    iput-object v4, v1, Lazd;->i:Lbbc;

    new-array v5, v11, [Layr;

    sget v6, Layt;->a:I

    new-instance v6, Lazw;

    invoke-direct {v6, v3, p0}, Lazw;-><init>(Landroid/content/Context;Lazd;)V

    const-class v7, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-static {v3, v7, v2}, Lbdn;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    invoke-static {}, Laxq;->a()Laxq;

    aput-object v6, v5, v9

    new-instance v6, Lazi;

    invoke-direct {v6, v3, p2, v4, p0}, Lazi;-><init>(Landroid/content/Context;Laxd;Lbbc;Lazd;)V

    aput-object v6, v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    new-instance v12, Layp;

    const/4 v7, 0x0

    move-object v2, v12

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object v6, v10

    invoke-direct/range {v2 .. v7}, Layp;-><init>(Landroid/content/Context;Laxd;Lva;Landroidx/work/impl/WorkDatabase;[B)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lazd;->b:Landroid/content/Context;

    iput-object v0, v1, Lazd;->c:Laxd;

    iput-object v8, v1, Lazd;->k:Lva;

    iput-object v10, v1, Lazd;->d:Landroidx/work/impl/WorkDatabase;

    iput-object v11, v1, Lazd;->e:Ljava/util/List;

    iput-object v12, v1, Lazd;->f:Layp;

    new-instance v3, Lbkb;

    invoke-direct {v3, v10}, Lbkb;-><init>(Landroidx/work/impl/WorkDatabase;)V

    iput-object v3, v1, Lazd;->j:Lbkb;

    iput-boolean v9, v1, Lazd;->g:Z

    iget-object v3, v8, Lva;->a:Ljava/lang/Object;

    new-instance v4, Lays;

    invoke-direct {v4, v3, v11, p2, v10}, Lays;-><init>(Ljava/util/concurrent/Executor;Ljava/util/List;Laxd;Landroidx/work/impl/WorkDatabase;)V

    invoke-virtual {v12, v4}, Layp;->b(Layc;)V

    invoke-static {v2}, Lazc;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lazd;->k:Lva;

    new-instance v3, Lbdi;

    invoke-direct {v3, v2, p0}, Lbdi;-><init>(Landroid/content/Context;Lazd;)V

    invoke-static {v0, v3}, Lbdl;->b(Lva;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static e(Landroid/content/Context;)Lazd;
    .locals 6

    sget-object v0, Lazd;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v1, Lazd;->l:Lazd;

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_0

    :cond_0
    sget-object v1, Lazd;->m:Lazd;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-nez v1, :cond_6

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    instance-of v1, p0, Laxc;

    if-eqz v1, :cond_5

    move-object v1, p0

    check-cast v1, Laxc;

    invoke-interface {v1}, Laxc;->a()Laxd;

    move-result-object v1

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    sget-object v2, Lazd;->l:Lazd;

    if-eqz v2, :cond_2

    sget-object v3, Lazd;->m:Lazd;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-nez v2, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lazd;->m:Lazd;

    if-nez v3, :cond_3

    new-instance v3, Lazd;

    new-instance v4, Lva;

    iget-object v5, v1, Laxd;->b:Ljava/util/concurrent/Executor;

    invoke-direct {v4, v5}, Lva;-><init>(Ljava/util/concurrent/Executor;)V

    const/4 v5, 0x0

    invoke-direct {v3, v2, v1, v4, v5}, Lazd;-><init>(Landroid/content/Context;Laxd;Lva;[B)V

    sput-object v3, Lazd;->m:Lazd;

    :cond_3
    sget-object v1, Lazd;->m:Lazd;

    sput-object v1, Lazd;->l:Lazd;

    :cond_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {p0}, Lazd;->e(Landroid/content/Context;)Lazd;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-object v1

    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lnou;
    .locals 1

    new-instance v0, Lbdq;

    invoke-direct {v0, p0, p1}, Lbdq;-><init>(Lazd;Ljava/lang/String;)V

    iget-object p1, p0, Lazd;->k:Lva;

    iget-object p1, p1, Lva;->a:Ljava/lang/Object;

    check-cast p1, Lbdp;

    invoke-virtual {p1, v0}, Lbdp;->execute(Ljava/lang/Runnable;)V

    iget-object p1, v0, Lbdq;->c:Lbej;

    return-object p1
.end method

.method public final b(Ljava/lang/String;ILjava/util/List;)Laxu;
    .locals 1

    new-instance v0, Layu;

    invoke-direct {v0, p0, p1, p2, p3}, Layu;-><init>(Lazd;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v0}, Layu;->h()Laxu;

    move-result-object p1

    return-object p1
.end method

.method public final c()Laxu;
    .locals 2

    const-string v0, "F250_WORKER_TAG"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lbdg;->b(Ljava/lang/String;Lazd;Z)Lbdg;

    move-result-object v0

    iget-object v1, p0, Lazd;->k:Lva;

    invoke-static {v1, v0}, Lbdl;->b(Lva;Ljava/lang/Runnable;)V

    iget-object v0, v0, Lbdg;->d:Layn;

    return-object v0
.end method

.method public final f()V
    .locals 2

    sget-object v0, Lazd;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lazd;->g:Z

    iget-object v1, p0, Lazd;->h:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    iput-object v1, p0, Lazd;->h:Landroid/content/BroadcastReceiver$PendingResult;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lazd;->b:Landroid/content/Context;

    sget v1, Lazw;->a:I

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lazw;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lazw;->f(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lazd;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->B()Lbck;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lbcy;

    iget-object v2, v1, Lbcy;->a:Lapt;

    invoke-virtual {v2}, Lapt;->l()V

    iget-object v2, v1, Lbcy;->f:Laqa;

    invoke-virtual {v2}, Laqa;->e()Larf;

    move-result-object v2

    iget-object v3, v1, Lbcy;->a:Lapt;

    invoke-virtual {v3}, Lapt;->m()V

    :try_start_0
    invoke-virtual {v2}, Larf;->a()I

    check-cast v0, Lbcy;

    iget-object v0, v0, Lbcy;->a:Lapt;

    invoke-virtual {v0}, Lapt;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lbcy;->a:Lapt;

    invoke-virtual {v0}, Lapt;->o()V

    iget-object v0, v1, Lbcy;->f:Laqa;

    invoke-virtual {v0, v2}, Laqa;->g(Larf;)V

    iget-object v0, p0, Lazd;->c:Laxd;

    iget-object v1, p0, Lazd;->d:Landroidx/work/impl/WorkDatabase;

    iget-object v2, p0, Lazd;->e:Ljava/util/List;

    invoke-static {v0, v1, v2}, Layt;->a(Laxd;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v3, v1, Lbcy;->a:Lapt;

    invoke-virtual {v3}, Lapt;->o()V

    iget-object v1, v1, Lbcy;->f:Laqa;

    invoke-virtual {v1, v2}, Laqa;->g(Larf;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final h(Lbkb;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lazd;->j(Lbkb;Lek;)V

    return-void
.end method

.method public final i(Lbkb;)V
    .locals 4

    iget-object v0, p0, Lazd;->k:Lva;

    new-instance v1, Lbdr;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lbdr;-><init>(Lazd;Lbkb;Z[B)V

    invoke-static {v0, v1}, Lbdl;->b(Lva;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j(Lbkb;Lek;)V
    .locals 10

    iget-object v0, p0, Lazd;->k:Lva;

    new-instance v9, Layo;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Layo;-><init>(Lazd;Lbkb;Lek;I[B[B[B)V

    invoke-static {v0, v9}, Lbdl;->b(Lva;Ljava/lang/Runnable;)V

    return-void
.end method
