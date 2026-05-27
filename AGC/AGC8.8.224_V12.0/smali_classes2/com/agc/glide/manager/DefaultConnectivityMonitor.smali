.class final Lcom/agc/glide/manager/DefaultConnectivityMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/manager/ConnectivityMonitor;


# instance fields
.field private final context:Landroid/content/Context;

.field final listener:Lcom/agc/glide/manager/ConnectivityMonitor$ConnectivityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/agc/glide/manager/ConnectivityMonitor$ConnectivityListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/glide/manager/DefaultConnectivityMonitor;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/agc/glide/manager/DefaultConnectivityMonitor;->listener:Lcom/agc/glide/manager/ConnectivityMonitor$ConnectivityListener;

    return-void
.end method

.method private register()V
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/manager/DefaultConnectivityMonitor;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->get(Landroid/content/Context;)Lcom/agc/glide/manager/SingletonConnectivityReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/manager/DefaultConnectivityMonitor;->listener:Lcom/agc/glide/manager/ConnectivityMonitor$ConnectivityListener;

    invoke-virtual {v0, v1}, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->register(Lcom/agc/glide/manager/ConnectivityMonitor$ConnectivityListener;)V

    return-void
.end method

.method private unregister()V
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/manager/DefaultConnectivityMonitor;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->get(Landroid/content/Context;)Lcom/agc/glide/manager/SingletonConnectivityReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/manager/DefaultConnectivityMonitor;->listener:Lcom/agc/glide/manager/ConnectivityMonitor$ConnectivityListener;

    invoke-virtual {v0, v1}, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->unregister(Lcom/agc/glide/manager/ConnectivityMonitor$ConnectivityListener;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-direct {p0}, Lcom/agc/glide/manager/DefaultConnectivityMonitor;->register()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-direct {p0}, Lcom/agc/glide/manager/DefaultConnectivityMonitor;->unregister()V

    return-void
.end method
