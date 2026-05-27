.class Lcom/agc/glide/RequestManager$RequestManagerConnectivityListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/manager/ConnectivityMonitor$ConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestManagerConnectivityListener"
.end annotation


# instance fields
.field private final requestTracker:Lcom/agc/glide/manager/RequestTracker;

.field final synthetic this$0:Lcom/agc/glide/RequestManager;


# direct methods
.method public constructor <init>(Lcom/agc/glide/RequestManager;Lcom/agc/glide/manager/RequestTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/RequestManager$RequestManagerConnectivityListener;->this$0:Lcom/agc/glide/RequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/agc/glide/RequestManager$RequestManagerConnectivityListener;->requestTracker:Lcom/agc/glide/manager/RequestTracker;

    return-void
.end method


# virtual methods
.method public onConnectivityChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/agc/glide/RequestManager$RequestManagerConnectivityListener;->this$0:Lcom/agc/glide/RequestManager;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/RequestManager$RequestManagerConnectivityListener;->requestTracker:Lcom/agc/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/agc/glide/manager/RequestTracker;->restartRequests()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
