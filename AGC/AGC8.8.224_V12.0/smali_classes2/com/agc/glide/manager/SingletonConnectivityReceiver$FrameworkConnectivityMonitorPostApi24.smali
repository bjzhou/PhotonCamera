.class final Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/manager/SingletonConnectivityReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameworkConnectivityMonitorPostApi24"
.end annotation


# instance fields
.field private final connectivityManager:Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/util/GlideSuppliers$GlideSupplier<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field isConnected:Z

.field final listener:Lcom/agc/glide/manager/ConnectivityMonitor$ConnectivityListener;

.field private final networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>(Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;Lcom/agc/glide/manager/ConnectivityMonitor$ConnectivityListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/util/GlideSuppliers$GlideSupplier<",
            "Landroid/net/ConnectivityManager;",
            ">;",
            "Lcom/agc/glide/manager/ConnectivityMonitor$ConnectivityListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1;

    invoke-direct {v0, p0}, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1;-><init>(Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;)V

    iput-object v0, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object p1, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->connectivityManager:Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;

    iput-object p2, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->listener:Lcom/agc/glide/manager/ConnectivityMonitor$ConnectivityListener;

    return-void
.end method


# virtual methods
.method public register()Z
    .locals 4

    iget-object v0, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->connectivityManager:Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;

    invoke-interface {v0}, Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->isConnected:Z

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->connectivityManager:Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;

    invoke-interface {v0}, Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x5

    const-string v3, "ConnectivityMonitor"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Failed to register callback"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v2
.end method

.method public unregister()V
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->connectivityManager:Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;

    invoke-interface {v0}, Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
