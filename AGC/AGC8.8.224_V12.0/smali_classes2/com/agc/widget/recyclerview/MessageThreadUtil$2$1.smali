.class Lcom/agc/widget/recyclerview/MessageThreadUtil$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/MessageThreadUtil$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/agc/widget/recyclerview/MessageThreadUtil$2;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/MessageThreadUtil$2;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2$1;->this$1:Lcom/agc/widget/recyclerview/MessageThreadUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :goto_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2$1;->this$1:Lcom/agc/widget/recyclerview/MessageThreadUtil$2;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->mQueue:Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;->next()Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2$1;->this$1:Lcom/agc/widget/recyclerview/MessageThreadUtil$2;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    iget v1, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->what:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message, what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->what:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThreadUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object v0, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    check-cast v0, Lcom/agc/widget/recyclerview/TileList$Tile;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2$1;->this$1:Lcom/agc/widget/recyclerview/MessageThreadUtil$2;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->val$callback:Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;

    invoke-interface {v1, v0}, Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;->recycleTile(Lcom/agc/widget/recyclerview/TileList$Tile;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2$1;->this$1:Lcom/agc/widget/recyclerview/MessageThreadUtil$2;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->val$callback:Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;

    iget v2, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v0, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v1, v2, v0}, Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;->loadTile(II)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2$1;->this$1:Lcom/agc/widget/recyclerview/MessageThreadUtil$2;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->mQueue:Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;->removeMessages(I)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2$1;->this$1:Lcom/agc/widget/recyclerview/MessageThreadUtil$2;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->mQueue:Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;->removeMessages(I)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2$1;->this$1:Lcom/agc/widget/recyclerview/MessageThreadUtil$2;

    iget-object v2, v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->val$callback:Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;

    iget v3, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v4, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg2:I

    iget v5, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg3:I

    iget v6, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg4:I

    iget v7, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg5:I

    invoke-interface/range {v2 .. v7}, Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2$1;->this$1:Lcom/agc/widget/recyclerview/MessageThreadUtil$2;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->mQueue:Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;->removeMessages(I)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2$1;->this$1:Lcom/agc/widget/recyclerview/MessageThreadUtil$2;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->val$callback:Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;

    iget v0, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg1:I

    invoke-interface {v1, v0}, Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;->refresh(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
