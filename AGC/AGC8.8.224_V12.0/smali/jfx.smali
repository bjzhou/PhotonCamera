.class public final Ljfx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Ljgb;

.field private final b:I


# direct methods
.method public constructor <init>(Ljgb;I)V
    .locals 0

    iput-object p1, p0, Ljfx;->a:Ljgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ljfx;->b:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    if-nez p2, :cond_1

    iget-object p1, p0, Ljfx;->a:Ljgb;

    iget-object v0, p1, Ljgb;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p2, p1, Ljgb;->i:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p1, Ljgb;->m:Z

    const/4 p2, 0x5

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    iget-object v0, p1, Ljgb;->d:Landroid/os/Handler;

    iget-object p1, p1, Ljgb;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/16 v1, 0x10

    invoke-virtual {v0, p2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    iget-object p1, p0, Ljfx;->a:Ljgb;

    iget-object p1, p1, Ljgb;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-object v0, p0, Ljfx;->a:Ljgb;

    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Ljgz;

    if-eqz v2, :cond_2

    check-cast v1, Ljgz;

    goto :goto_1

    :cond_2
    new-instance v1, Ljgz;

    invoke-direct {v1, p2}, Ljgz;-><init>(Landroid/os/IBinder;)V

    :goto_1
    iput-object v1, v0, Ljgb;->p:Ljgz;

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Ljfx;->a:Ljgb;

    iget p2, p0, Ljfx;->b:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljgb;->H(II)V

    return-void

    :catchall_1
    move-exception p2

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object p1, p0, Ljfx;->a:Ljgb;

    iget-object p1, p1, Ljgb;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Ljfx;->a:Ljgb;

    const/4 v1, 0x0

    iput-object v1, v0, Ljgb;->p:Ljgz;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ljfx;->a:Ljgb;

    iget-object p1, p1, Ljgb;->d:Landroid/os/Handler;

    iget v0, p0, Ljfx;->b:I

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
