.class public final Lery;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:I

.field private static final b:Ljava/util/concurrent/Executor;


# instance fields
.field private final c:Lnph;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcis;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sput-object v0, Lery;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lery;->c:Lnph;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lery;->d:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lnou;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lery;->c:Lnph;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lery;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lery;->d:Z

    new-instance v0, Lerx;

    invoke-direct {v0, p1}, Lerx;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lery;->c:Lnph;

    sget-object v1, Lchy;->p:Lchy;

    sget-object v2, Lery;->b:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2}, Lnsy;->E(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v1

    new-instance v3, Lerm;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, Lerm;-><init>(Lerx;I)V

    invoke-static {v3, v2}, Lnsy;->E(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v3

    new-instance v4, Lerm;

    const/4 v5, 0x4

    invoke-direct {v4, v0, v5}, Lerm;-><init>(Lerx;I)V

    invoke-static {v4, v2}, Lnsy;->E(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v4

    new-instance v5, Lerm;

    const/4 v6, 0x5

    invoke-direct {v5, v0, v6}, Lerm;-><init>(Lerx;I)V

    invoke-static {v5, v2}, Lnsy;->E(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    sget-object v5, Lchy;->q:Lchy;

    invoke-static {v5, v2}, Lnsy;->E(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v2

    invoke-static {v1, v3, v4, v0, v2}, Lmvv;->p(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v0

    invoke-static {v0}, Lnsy;->x(Ljava/lang/Iterable;)Lnou;

    move-result-object v0

    sget-object v1, Ldeo;->o:Ldeo;

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, v2}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnph;->f(Lnou;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
