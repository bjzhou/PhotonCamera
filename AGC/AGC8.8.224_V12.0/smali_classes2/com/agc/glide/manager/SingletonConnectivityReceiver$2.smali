.class Lcom/agc/glide/manager/SingletonConnectivityReceiver$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/manager/ConnectivityMonitor$ConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/glide/manager/SingletonConnectivityReceiver;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/glide/manager/SingletonConnectivityReceiver;


# direct methods
.method public constructor <init>(Lcom/agc/glide/manager/SingletonConnectivityReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$2;->this$0:Lcom/agc/glide/manager/SingletonConnectivityReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectivityChanged(Z)V
    .locals 3

    invoke-static {}, Lcom/agc/glide/util/Util;->assertMainThread()V

    iget-object v0, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$2;->this$0:Lcom/agc/glide/manager/SingletonConnectivityReceiver;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$2;->this$0:Lcom/agc/glide/manager/SingletonConnectivityReceiver;

    iget-object v2, v2, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/glide/manager/ConnectivityMonitor$ConnectivityListener;

    invoke-interface {v1, p1}, Lcom/agc/glide/manager/ConnectivityMonitor$ConnectivityListener;->onConnectivityChanged(Z)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
