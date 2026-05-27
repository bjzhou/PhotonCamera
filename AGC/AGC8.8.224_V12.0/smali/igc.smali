.class public final synthetic Ligc;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;I)V
    .locals 0

    iput p3, p0, Ligc;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligc;->a:Ljava/lang/Object;

    iput-object p2, p0, Ligc;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ligd;Landroid/view/ViewTreeObserver;I)V
    .locals 0

    iput p3, p0, Ligc;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligc;->a:Ljava/lang/Object;

    iput-object p2, p0, Ligc;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljvk;Ljtz;I)V
    .locals 0

    iput p3, p0, Ligc;->c:I

    iput-object p1, p0, Ligc;->a:Ljava/lang/Object;

    iput-object p2, p0, Ligc;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljwf;Ljava/util/concurrent/atomic/AtomicBoolean;I)V
    .locals 0

    iput p3, p0, Ligc;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligc;->b:Ljava/lang/Object;

    iput-object p2, p0, Ligc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkad;Lkad;I)V
    .locals 0

    iput p3, p0, Ligc;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligc;->b:Ljava/lang/Object;

    iput-object p2, p0, Ligc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkdb;Lkdd;I)V
    .locals 0

    iput p3, p0, Ligc;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligc;->b:Ljava/lang/Object;

    iput-object p2, p0, Ligc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkfv;Ljava/lang/Runnable;I)V
    .locals 0

    iput p3, p0, Ligc;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligc;->b:Ljava/lang/Object;

    iput-object p2, p0, Ligc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkio;Ljava/lang/Runnable;I)V
    .locals 0

    iput p3, p0, Ligc;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligc;->b:Ljava/lang/Object;

    iput-object p2, p0, Ligc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkio;Ljuf;I)V
    .locals 0

    iput p3, p0, Ligc;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligc;->a:Ljava/lang/Object;

    iput-object p2, p0, Ligc;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget v0, p0, Ligc;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ligc;->b:Ljava/lang/Object;

    iget-object v1, p0, Ligc;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lkad;->close()V

    invoke-interface {v1}, Lkad;->close()V

    return-void

    :pswitch_0
    iget-object v0, p0, Ligc;->b:Ljava/lang/Object;

    iget-object v1, p0, Ligc;->a:Ljava/lang/Object;

    check-cast v0, Lkio;

    iget-object v0, v0, Lkio;->d:Lkjn;

    iget-object v2, v0, Lkjn;->b:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lkjn;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    iget-object v0, p0, Ligc;->a:Ljava/lang/Object;

    iget-object v1, p0, Ligc;->b:Ljava/lang/Object;

    check-cast v0, Lkio;

    iget-object v0, v0, Lkio;->i:Landroid/os/Handler;

    new-instance v2, Lkcu;

    check-cast v1, Ljuf;

    const/16 v3, 0xa

    invoke-direct {v2, v1, v3}, Lkcu;-><init>(Ljuf;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_2
    iget-object v0, p0, Ligc;->b:Ljava/lang/Object;

    iget-object v1, p0, Ligc;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    move-object v2, v0

    check-cast v2, Lkfv;

    iget-object v2, v2, Lkfv;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :pswitch_3
    iget-object v0, p0, Ligc;->b:Ljava/lang/Object;

    iget-object v1, p0, Ligc;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    move-object v2, v0

    check-cast v2, Lkdb;

    iget-object v2, v2, Lkdb;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :pswitch_4
    iget-object v0, p0, Ligc;->b:Ljava/lang/Object;

    iget-object v1, p0, Ligc;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Ljwf;

    iget-object v1, v0, Ljwf;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Ljum;

    const/16 v3, 0x9

    invoke-direct {v2, v0, v3}, Ljum;-><init>(Ljwf;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Ligc;->a:Ljava/lang/Object;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->b:Ljava/util/Set;

    iget-object v1, p0, Ligc;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_6
    iget-object v0, p0, Ligc;->a:Ljava/lang/Object;

    iget-object v1, p0, Ligc;->b:Ljava/lang/Object;

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Ligc;->a:Ljava/lang/Object;

    iget-object v1, p0, Ligc;->b:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void

    :pswitch_8
    iget-object v0, p0, Ligc;->a:Ljava/lang/Object;

    iget-object v1, p0, Ligc;->b:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
