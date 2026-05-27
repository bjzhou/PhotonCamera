.class final Lmmo;
.super Lmmk;


# instance fields
.field final synthetic a:Lmmt;


# direct methods
.method public constructor <init>(Lmmt;)V
    .locals 0

    iput-object p1, p0, Lmmo;->a:Lmmt;

    invoke-direct {p0}, Lmmk;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lmmo;->a:Lmmt;

    iget-object v0, v0, Lmmt;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmmo;->a:Lmmt;

    iget-object v1, v1, Lmmt;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lmmo;->a:Lmmt;

    iget-object v1, v1, Lmmt;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    iget-object v1, p0, Lmmo;->a:Lmmt;

    iget-object v2, v1, Lmmt;->k:Landroid/os/IInterface;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lmmt;->a:Landroid/content/Context;

    iget-object v1, v1, Lmmt;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lmmo;->a:Lmmt;

    invoke-static {v1}, Lmmt;->d(Lmmt;)V

    iget-object v1, p0, Lmmo;->a:Lmmt;

    const/4 v2, 0x0

    iput-object v2, v1, Lmmt;->k:Landroid/os/IInterface;

    iput-object v2, v1, Lmmt;->j:Landroid/content/ServiceConnection;

    :cond_2
    iget-object v1, p0, Lmmo;->a:Lmmt;

    invoke-virtual {v1}, Lmmt;->b()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
