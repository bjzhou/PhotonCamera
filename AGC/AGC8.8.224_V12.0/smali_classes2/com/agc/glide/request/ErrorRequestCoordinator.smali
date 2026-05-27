.class public final Lcom/agc/glide/request/ErrorRequestCoordinator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/request/RequestCoordinator;
.implements Lcom/agc/glide/request/Request;


# instance fields
.field private volatile error:Lcom/agc/glide/request/Request;

.field private errorState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

.field private final parent:Lcom/agc/glide/request/RequestCoordinator;

.field private volatile primary:Lcom/agc/glide/request/Request;

.field private primaryState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

.field private final requestLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/agc/glide/request/RequestCoordinator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/agc/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    iput-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    iput-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->errorState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    iput-object p1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->parent:Lcom/agc/glide/request/RequestCoordinator;

    return-void
.end method

.method private isValidRequestForStatusChanged(Lcom/agc/glide/request/Request;)Z
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    sget-object v1, Lcom/agc/glide/request/RequestCoordinator$RequestState;->FAILED:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->primary:Lcom/agc/glide/request/Request;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->error:Lcom/agc/glide/request/Request;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->errorState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    sget-object v0, Lcom/agc/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private parentCanNotifyCleared()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->parent:Lcom/agc/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/agc/glide/request/RequestCoordinator;->canNotifyCleared(Lcom/agc/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private parentCanNotifyStatusChanged()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->parent:Lcom/agc/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/agc/glide/request/RequestCoordinator;->canNotifyStatusChanged(Lcom/agc/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private parentCanSetImage()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->parent:Lcom/agc/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/agc/glide/request/RequestCoordinator;->canSetImage(Lcom/agc/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public begin()V
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/agc/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    if-eq v1, v2, :cond_0

    iput-object v2, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    iget-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->primary:Lcom/agc/glide/request/Request;

    invoke-interface {v1}, Lcom/agc/glide/request/Request;->begin()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canNotifyCleared(Lcom/agc/glide/request/Request;)Z
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/agc/glide/request/ErrorRequestCoordinator;->parentCanNotifyCleared()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->primary:Lcom/agc/glide/request/Request;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public canNotifyStatusChanged(Lcom/agc/glide/request/Request;)Z
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/agc/glide/request/ErrorRequestCoordinator;->parentCanNotifyStatusChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/agc/glide/request/ErrorRequestCoordinator;->isValidRequestForStatusChanged(Lcom/agc/glide/request/Request;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public canSetImage(Lcom/agc/glide/request/Request;)Z
    .locals 1

    iget-object p1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-direct {p0}, Lcom/agc/glide/request/ErrorRequestCoordinator;->parentCanSetImage()Z

    move-result v0

    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/agc/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    iput-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    iget-object v2, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->primary:Lcom/agc/glide/request/Request;

    invoke-interface {v2}, Lcom/agc/glide/request/Request;->clear()V

    iget-object v2, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->errorState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    if-eq v2, v1, :cond_0

    iput-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->errorState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    iget-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->error:Lcom/agc/glide/request/Request;

    invoke-interface {v1}, Lcom/agc/glide/request/Request;->clear()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRoot()Lcom/agc/glide/request/RequestCoordinator;
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->parent:Lcom/agc/glide/request/RequestCoordinator;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/agc/glide/request/RequestCoordinator;->getRoot()Lcom/agc/glide/request/RequestCoordinator;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAnyResourceSet()Z
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->primary:Lcom/agc/glide/request/Request;

    invoke-interface {v1}, Lcom/agc/glide/request/Request;->isAnyResourceSet()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->error:Lcom/agc/glide/request/Request;

    invoke-interface {v1}, Lcom/agc/glide/request/Request;->isAnyResourceSet()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCleared()Z
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/agc/glide/request/RequestCoordinator$RequestState;->CLEARED:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->errorState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isComplete()Z
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/agc/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->errorState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEquivalentTo(Lcom/agc/glide/request/Request;)Z
    .locals 3

    instance-of v0, p1, Lcom/agc/glide/request/ErrorRequestCoordinator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/agc/glide/request/ErrorRequestCoordinator;

    iget-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->primary:Lcom/agc/glide/request/Request;

    iget-object v2, p1, Lcom/agc/glide/request/ErrorRequestCoordinator;->primary:Lcom/agc/glide/request/Request;

    invoke-interface {v0, v2}, Lcom/agc/glide/request/Request;->isEquivalentTo(Lcom/agc/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->error:Lcom/agc/glide/request/Request;

    iget-object p1, p1, Lcom/agc/glide/request/ErrorRequestCoordinator;->error:Lcom/agc/glide/request/Request;

    invoke-interface {v0, p1}, Lcom/agc/glide/request/Request;->isEquivalentTo(Lcom/agc/glide/request/Request;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isRunning()Z
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/agc/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->errorState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onRequestFailed(Lcom/agc/glide/request/Request;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->error:Lcom/agc/glide/request/Request;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/agc/glide/request/RequestCoordinator$RequestState;->FAILED:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    iput-object p1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    iget-object p1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->errorState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    sget-object v1, Lcom/agc/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    if-eq p1, v1, :cond_0

    iput-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->errorState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    iget-object p1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->error:Lcom/agc/glide/request/Request;

    invoke-interface {p1}, Lcom/agc/glide/request/Request;->begin()V

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    sget-object p1, Lcom/agc/glide/request/RequestCoordinator$RequestState;->FAILED:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    iput-object p1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->errorState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    iget-object p1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->parent:Lcom/agc/glide/request/RequestCoordinator;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lcom/agc/glide/request/RequestCoordinator;->onRequestFailed(Lcom/agc/glide/request/Request;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onRequestSuccess(Lcom/agc/glide/request/Request;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->primary:Lcom/agc/glide/request/Request;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/agc/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    iput-object p1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->error:Lcom/agc/glide/request/Request;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/agc/glide/request/RequestCoordinator$RequestState;->SUCCESS:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    iput-object p1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->errorState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->parent:Lcom/agc/glide/request/RequestCoordinator;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lcom/agc/glide/request/RequestCoordinator;->onRequestSuccess(Lcom/agc/glide/request/Request;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pause()V
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    sget-object v2, Lcom/agc/glide/request/RequestCoordinator$RequestState;->RUNNING:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/agc/glide/request/RequestCoordinator$RequestState;->PAUSED:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    iput-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->primaryState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    iget-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->primary:Lcom/agc/glide/request/Request;

    invoke-interface {v1}, Lcom/agc/glide/request/Request;->pause()V

    :cond_0
    iget-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->errorState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/agc/glide/request/RequestCoordinator$RequestState;->PAUSED:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    iput-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->errorState:Lcom/agc/glide/request/RequestCoordinator$RequestState;

    iget-object v1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->error:Lcom/agc/glide/request/Request;

    invoke-interface {v1}, Lcom/agc/glide/request/Request;->pause()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRequests(Lcom/agc/glide/request/Request;Lcom/agc/glide/request/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->primary:Lcom/agc/glide/request/Request;

    iput-object p2, p0, Lcom/agc/glide/request/ErrorRequestCoordinator;->error:Lcom/agc/glide/request/Request;

    return-void
.end method
