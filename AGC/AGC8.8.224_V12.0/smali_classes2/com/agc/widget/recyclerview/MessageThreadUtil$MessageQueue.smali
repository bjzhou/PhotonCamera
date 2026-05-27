.class Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/MessageThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageQueue"
.end annotation


# instance fields
.field private mRoot:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized next()Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;->mRoot:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->next:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    iput-object v1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;->mRoot:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeMessages(I)V
    .locals 4

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;->mRoot:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v1, p1, :cond_0

    iget-object v1, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->next:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    iput-object v1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;->mRoot:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->recycle()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->next:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->next:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    iget v3, v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v3, p1, :cond_1

    iput-object v2, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->next:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    move-object v0, v1

    :goto_2
    move-object v1, v2

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendMessage(Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;->mRoot:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;->mRoot:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->next:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iput-object p1, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->next:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendMessageAtFrontOfQueue(Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;->mRoot:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    iput-object v0, p1, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->next:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    iput-object p1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;->mRoot:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
