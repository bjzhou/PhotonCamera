.class public final Liyz;
.super Ljava/lang/Object;


# static fields
.field private static volatile h:Liyz;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/Context;

.field public final c:Lizl;

.field public final d:Lizv;

.field public final e:Lizo;

.field public final f:Lizz;

.field public final g:Ljhx;

.field private final i:Liys;

.field private final j:Liyu;

.field private final k:Ljae;


# direct methods
.method protected constructor <init>(Ligo;[B[B[B[B)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p1, Ligo;->b:Ljava/lang/Object;

    const-string p3, "Application context can\'t be null"

    invoke-static {p2, p3}, Ljhp;->ac(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p1, Ligo;->a:Ljava/lang/Object;

    invoke-static {p1}, Ljhp;->ab(Ljava/lang/Object;)V

    move-object p3, p2

    check-cast p3, Landroid/content/Context;

    iput-object p3, p0, Liyz;->a:Landroid/content/Context;

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Liyz;->b:Landroid/content/Context;

    sget-object p1, Ljhx;->a:Ljhx;

    iput-object p1, p0, Liyz;->g:Ljhx;

    new-instance p1, Lizl;

    invoke-direct {p1, p0}, Lizl;-><init>(Liyz;)V

    iput-object p1, p0, Liyz;->c:Lizl;

    new-instance p1, Lizv;

    invoke-direct {p1, p0}, Lizv;-><init>(Liyz;)V

    invoke-virtual {p1}, Liyw;->A()V

    iput-object p1, p0, Liyz;->d:Lizv;

    invoke-virtual {p0}, Liyz;->d()Lizv;

    move-result-object v0

    const/4 v1, 0x4

    sget-object p1, Liyx;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Google Analytics "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Liyv;->w(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lizz;

    invoke-direct {p1, p0}, Lizz;-><init>(Liyz;)V

    invoke-virtual {p1}, Liyw;->A()V

    iput-object p1, p0, Liyz;->f:Lizz;

    new-instance p1, Ljae;

    invoke-direct {p1, p0}, Ljae;-><init>(Liyz;)V

    invoke-virtual {p1}, Liyw;->A()V

    iput-object p1, p0, Liyz;->k:Ljae;

    new-instance p1, Liyu;

    invoke-direct {p1, p0}, Liyu;-><init>(Liyz;)V

    new-instance p3, Lizk;

    invoke-direct {p3, p0}, Lizk;-><init>(Liyz;)V

    new-instance p4, Liyt;

    invoke-direct {p4, p0}, Liyt;-><init>(Liyz;)V

    new-instance p5, Lizf;

    invoke-direct {p5, p0}, Lizf;-><init>(Liyz;)V

    new-instance v0, Lizn;

    invoke-direct {v0, p0}, Lizn;-><init>(Liyz;)V

    invoke-static {p2}, Ljhp;->ab(Ljava/lang/Object;)V

    sget-object v1, Liys;->a:Liys;

    if-nez v1, :cond_1

    const-class v1, Liys;

    monitor-enter v1

    :try_start_0
    sget-object v2, Liys;->a:Liys;

    if-nez v2, :cond_0

    new-instance v2, Liys;

    check-cast p2, Landroid/content/Context;

    invoke-direct {v2, p2}, Liys;-><init>(Landroid/content/Context;)V

    sput-object v2, Liys;->a:Liys;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    sget-object p2, Liys;->a:Liys;

    new-instance v1, Liyy;

    invoke-direct {v1, p0}, Liyy;-><init>(Liyz;)V

    iput-object v1, p2, Liys;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p2, p0, Liyz;->i:Liys;

    new-instance p2, Liyk;

    invoke-direct {p2, p0}, Liyk;-><init>(Liyz;)V

    invoke-virtual {p3}, Liyw;->A()V

    invoke-virtual {p4}, Liyw;->A()V

    invoke-virtual {p5}, Liyw;->A()V

    invoke-virtual {v0}, Liyw;->A()V

    new-instance p3, Lizo;

    invoke-direct {p3, p0}, Lizo;-><init>(Liyz;)V

    invoke-virtual {p3}, Liyw;->A()V

    iput-object p3, p0, Liyz;->e:Lizo;

    invoke-virtual {p1}, Liyw;->A()V

    iput-object p1, p0, Liyz;->j:Liyu;

    iget-object p2, p2, Liyn;->b:Liyz;

    invoke-virtual {p2}, Liyz;->e()Ljae;

    move-result-object p2

    invoke-virtual {p2}, Liyw;->z()V

    invoke-virtual {p2}, Liyw;->z()V

    iget-boolean p3, p2, Ljae;->f:Z

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Liyw;->z()V

    iget-boolean p3, p2, Ljae;->g:Z

    :cond_2
    invoke-virtual {p2}, Liyw;->z()V

    iget-object p1, p1, Liyu;->a:Lizj;

    invoke-virtual {p1}, Liyw;->z()V

    iget-boolean p2, p1, Lizj;->a:Z

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    const-string p4, "Analytics backend already started"

    invoke-static {p2, p4}, Ljhp;->Y(ZLjava/lang/Object;)V

    iput-boolean p3, p1, Lizj;->a:Z

    invoke-virtual {p1}, Liyv;->e()Liys;

    move-result-object p2

    new-instance p3, Liwu;

    const/16 p4, 0x9

    invoke-direct {p3, p1, p4}, Liwu;-><init>(Lizj;I)V

    invoke-virtual {p2, p3}, Liys;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Liyz;
    .locals 10

    invoke-static {p0}, Ljhp;->ab(Ljava/lang/Object;)V

    sget-object v0, Liyz;->h:Liyz;

    if-nez v0, :cond_3

    const-class v0, Liyz;

    monitor-enter v0

    :try_start_0
    sget-object v1, Liyz;->h:Liyz;

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance v4, Ligo;

    const/4 v9, 0x0

    invoke-direct {v4, p0, v9}, Ligo;-><init>(Landroid/content/Context;[B)V

    new-instance p0, Liyz;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Liyz;-><init>(Ligo;[B[B[B[B)V

    sput-object p0, Liyz;->h:Liyz;

    sget-object v3, Liyk;->a:Ljava/util/List;

    const-class v3, Liyk;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v4, Liyk;->a:Ljava/util/List;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    sput-object v9, Liyk;->a:Ljava/util/List;

    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    sget-object v1, Lizq;->B:Ligo;

    invoke-virtual {v1}, Ligo;->D()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v5, v3, v1

    if-lez v5, :cond_2

    invoke-virtual {p0}, Liyz;->d()Lizv;

    move-result-object p0

    const-string v5, "Slow initialization (ms)"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v5, v3, v1}, Liyv;->v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_2
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_3
    :goto_2
    sget-object p0, Liyz;->h:Liyz;

    return-object p0
.end method

.method public static final f(Liyw;)V
    .locals 1

    const-string v0, "Analytics service not created/initialized"

    invoke-static {p0, v0}, Ljhp;->ac(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Liyw;->B()Z

    move-result p0

    const-string v0, "Analytics service not initialized"

    invoke-static {p0, v0}, Ljhp;->T(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Liys;
    .locals 1

    iget-object v0, p0, Liyz;->i:Liys;

    invoke-static {v0}, Ljhp;->ab(Ljava/lang/Object;)V

    iget-object v0, p0, Liyz;->i:Liys;

    return-object v0
.end method

.method public final b()Liyu;
    .locals 1

    iget-object v0, p0, Liyz;->j:Liyu;

    invoke-static {v0}, Liyz;->f(Liyw;)V

    iget-object v0, p0, Liyz;->j:Liyu;

    return-object v0
.end method

.method public final d()Lizv;
    .locals 1

    iget-object v0, p0, Liyz;->d:Lizv;

    invoke-static {v0}, Liyz;->f(Liyw;)V

    iget-object v0, p0, Liyz;->d:Lizv;

    return-object v0
.end method

.method public final e()Ljae;
    .locals 1

    iget-object v0, p0, Liyz;->k:Ljae;

    invoke-static {v0}, Liyz;->f(Liyw;)V

    iget-object v0, p0, Liyz;->k:Ljae;

    return-object v0
.end method
