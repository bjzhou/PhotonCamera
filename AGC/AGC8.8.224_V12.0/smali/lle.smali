.class public final Llle;
.super Llkj;

# interfaces
.implements Llha;
.implements Llil;


# instance fields
.field public final a:Logd;

.field public final b:Lmap;

.field private final c:Lnox;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Llij;Landroid/content/Context;Llhe;Lnox;Logd;Logd;Loiw;Ljava/util/concurrent/Executor;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llkj;-><init>([B)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Llle;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Llle;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Llle;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p8, p5, p7}, Llij;->b(Ljava/util/concurrent/Executor;Logd;Loiw;)Lmap;

    move-result-object p1

    iput-object p1, p0, Llle;->b:Lmap;

    check-cast p2, Landroid/app/Application;

    iput-object p4, p0, Llle;->c:Lnox;

    iput-object p6, p0, Llle;->a:Logd;

    invoke-virtual {p3, p0}, Llhe;->a(Llhd;)V

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 5

    iget-object v0, p0, Llle;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcna;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lcna;-><init>(Llle;I)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Llle;->c:Lnox;

    const-wide/16 v3, 0x1

    invoke-static {v0, v3, v4, v1, v2}, Lnsy;->D(Lnnn;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lnou;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Llle;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Llle;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Llle;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lllc;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lllc;

    iget-object v2, p0, Llle;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    sget-object v0, Lnor;->a:Lnou;

    return-object v0

    :cond_2
    new-instance v0, Lcnb;

    const/4 v2, 0x7

    invoke-direct {v0, p0, v1, v2}, Lcnb;-><init>(Llle;[Lllc;I)V

    iget-object v1, p0, Llle;->c:Lnox;

    invoke-static {v0, v1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final synthetic ab()V
    .locals 0

    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Llle;->a()Lnou;

    return-void
.end method
