.class Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->register()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;


# direct methods
.method public constructor <init>(Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$2;->this$0:Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$2;->this$0:Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    invoke-virtual {v0}, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->isConnected()Z

    move-result v1

    iput-boolean v1, v0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->isConnected:Z

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$2;->this$0:Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    iget-object v1, v0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->context:Landroid/content/Context;

    iget-object v0, v0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$2;->this$0:Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->isRegistered:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x5

    const-string v2, "ConnectivityMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Failed to register"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$2;->this$0:Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;->isRegistered:Z

    :goto_0
    return-void
.end method
