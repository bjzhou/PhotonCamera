.class final Lktl;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lxu;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;Lxu;)V
    .locals 0

    iput-object p1, p0, Lktl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lktl;->b:Ljava/lang/Runnable;

    iput-object p3, p0, Lktl;->c:Lxu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p2, p0, Lktl;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lktl;->b:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lktl;->c:Lxu;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lxu;->a(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
