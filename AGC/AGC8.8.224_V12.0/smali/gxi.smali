.class public final Lgxi;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/util/List;

.field public final c:Lgwf;

.field public final d:Ljava/util/Map;

.field private final e:Logd;

.field private final f:Ljuh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/session/SessionNotifier"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgxi;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljuh;Lgwf;Logd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgxi;->b:Ljava/util/List;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgxi;->d:Ljava/util/Map;

    iput-object p1, p0, Lgxi;->f:Ljuh;

    iput-object p2, p0, Lgxi;->c:Lgwf;

    iput-object p3, p0, Lgxi;->e:Logd;

    return-void
.end method


# virtual methods
.method public final a(Lgxm;)V
    .locals 2

    iget-object v0, p0, Lgxi;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgxi;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/util/function/Consumer;Lgxy;)V
    .locals 3

    iget-object v0, p0, Lgxi;->f:Ljuh;

    new-instance v1, Lgwr;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, p2, v2}, Lgwr;-><init>(Lgxi;Ljava/util/function/Consumer;Lgxy;I)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Ljava/util/function/Consumer;)V
    .locals 2

    iget-object v0, p0, Lgxi;->e:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgxm;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgxi;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgxm;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final d(Ljava/util/function/Consumer;)V
    .locals 3

    iget-object v0, p0, Lgxi;->f:Ljuh;

    new-instance v1, Lgps;

    const/16 v2, 0xb

    invoke-direct {v1, p0, p1, v2}, Lgps;-><init>(Lgxi;Ljava/util/function/Consumer;I)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Lgxy;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lgxi;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnou;

    if-nez v0, :cond_0

    sget-object p2, Lgxi;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->b()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 v0, 0xd20

    invoke-interface {p2, v0}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string v0, "%s: No queued future found, maybe shot already finalized?: %s"

    invoke-interface {p2, v0, p1, p3}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v1, Lcwk;

    const/4 v2, 0x3

    invoke-direct {v1, p3, p2, p1, v2}, Lcwk;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Lgxy;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, p1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final f(Lgxy;)V
    .locals 3

    iget-object v0, p0, Lgxi;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnou;

    if-nez v0, :cond_0

    sget-object v0, Lgxi;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "%s: No queued future found, maybe shot already finalized?: notifyTaskDone"

    const/16 v2, 0xd26

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :cond_0
    new-instance v1, Lgps;

    const/16 v2, 0xa

    invoke-direct {v1, p0, p1, v2}, Lgps;-><init>(Lgxi;Lgxy;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {v0, v1, p1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final g(Lgxy;Lnou;Lgyb;)V
    .locals 3

    iget-object v0, p0, Lgxi;->d:Ljava/util/Map;

    new-instance v1, Lfxj;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, p3, v2}, Lfxj;-><init>(Lgxi;Lgxy;Lgyb;I)V

    sget-object p3, Lnnv;->a:Lnnv;

    invoke-static {p2, v1, p3}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final h(Lgxm;)V
    .locals 2

    iget-object v0, p0, Lgxi;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgxi;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
