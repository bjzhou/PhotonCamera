.class public final Lljy;
.super Ljava/lang/Object;

# interfaces
.implements Llgw;
.implements Llgv;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Logd;

.field private c:Z

.field private d:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/jank/ActivityLevelJankMonitor"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lljy;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Logd;Loiw;Lmqp;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lljy;->c:Z

    iput-object p1, p0, Lljy;->b:Logd;

    new-instance p1, Lljx;

    invoke-direct {p1, p0, p2, p3}, Lljx;-><init>(Lljy;Loiw;Lmqp;)V

    invoke-interface {p4, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/app/Activity;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lljy;->d:Landroid/app/Activity;

    iget-boolean v0, p0, Lljy;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lljy;->b:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llkf;

    invoke-virtual {v0, p1}, Llkf;->c(Landroid/app/Activity;)V
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

.method public declared-synchronized b(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lljy;->d:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lljy;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x11a2

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    iget-object v1, p0, Lljy;->d:Landroid/app/Activity;

    const-string v2, "Activity mismatch (currentActivity=%s, activity=%s)"

    invoke-interface {v0, v2, v1, p1}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lljy;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lljy;->b:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llkf;

    invoke-virtual {v0, p1}, Llkf;->a(Landroid/app/Activity;)Lnou;

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lljy;->d:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic c(Loiw;Lmqp;)V
    .locals 0

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loiw;

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loiw;

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lljy;->c:Z

    iget-object p1, p0, Lljy;->d:Landroid/app/Activity;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lljy;->a(Landroid/app/Activity;)V

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_1
    return-void
.end method
