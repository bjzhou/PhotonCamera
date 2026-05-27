.class public final Ldkt;
.super Ljava/lang/Object;

# interfaces
.implements Ldkp;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public d:Lika;

.field protected final e:Lktq;

.field private f:Z

.field private final g:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/debug/jankmonitor/limited/JankMonitorFacadeLimited"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldkt;->a:Lnak;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldkt;->f:Z

    const-string v0, "JankReports"

    invoke-static {v0}, Ljvd;->j(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Ldkt;->g:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldkt;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldkt;->c:Ljava/util/List;

    sget-object v0, Lika;->a:Lika;

    iput-object v0, p0, Ldkt;->d:Lika;

    new-instance v0, Lktq;

    new-instance v2, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v2, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ldkt;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lktq;-><init>(Landroidx/wear/ambient/AmbientMode$AmbientController;[B[B[B[B)V

    iput-object v0, p0, Ldkt;->e:Lktq;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/List;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ldkt;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Ldkt;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Ldkt;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldks;

    invoke-virtual {v2}, Ldks;->a()Lniv;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ldkt;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final b(JJ)V
    .locals 1

    iget-object v0, p0, Ldkt;->e:Lktq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lktq;->a(JJ)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Ldkt;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldks;

    iget p3, p2, Ldks;->d:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p2, Ldks;->d:I

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized d(Lika;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ldkt;->d:Lika;

    iget-object v0, p0, Ldkt;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldks;

    iget-object v2, p0, Ldkt;->c:Ljava/util/List;

    invoke-virtual {v1}, Ldks;->a()Lniv;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldkt;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Ldkt;->b:Ljava/util/List;

    new-instance v1, Ldks;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Ldks;-><init>(Lika;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Ldkt;->f:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldkt;->f:Z

    new-instance p1, Ldks;

    iget-object v0, p0, Ldkt;->d:Lika;

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Ldks;-><init>(Lika;I)V

    iget-object v0, p0, Ldkt;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldkt;->g:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Ldgd;

    invoke-direct {v2, p0, p1, v1}, Ldgd;-><init>(Ldkt;Ldks;I)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-interface {v0, v2, v3, v4, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized e()V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Ldks;

    iget-object v1, p0, Ldkt;->d:Lika;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ldks;-><init>(Lika;I)V

    iget-object v1, p0, Ldkt;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Ldkt;->g:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Ldgd;

    invoke-direct {v3, p0, v0, v2}, Ldgd;-><init>(Ldkt;Ldks;I)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-interface {v1, v3, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method
