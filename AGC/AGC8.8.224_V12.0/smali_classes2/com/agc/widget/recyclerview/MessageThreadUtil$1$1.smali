.class Lcom/agc/widget/recyclerview/MessageThreadUtil$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/MessageThreadUtil$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/agc/widget/recyclerview/MessageThreadUtil$1;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/MessageThreadUtil$1;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$1$1;->this$1:Lcom/agc/widget/recyclerview/MessageThreadUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$1$1;->this$1:Lcom/agc/widget/recyclerview/MessageThreadUtil$1;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$1;->mQueue:Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;->next()Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

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

    :cond_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$1$1;->this$1:Lcom/agc/widget/recyclerview/MessageThreadUtil$1;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$1;->val$callback:Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;

    iget v2, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v0, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v1, v2, v0}, Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;->removeTile(II)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    check-cast v1, Lcom/agc/widget/recyclerview/TileList$Tile;

    iget-object v2, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$1$1;->this$1:Lcom/agc/widget/recyclerview/MessageThreadUtil$1;

    iget-object v2, v2, Lcom/agc/widget/recyclerview/MessageThreadUtil$1;->val$callback:Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;

    iget v0, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg1:I

    invoke-interface {v2, v0, v1}, Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;->addTile(ILcom/agc/widget/recyclerview/TileList$Tile;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$1$1;->this$1:Lcom/agc/widget/recyclerview/MessageThreadUtil$1;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$1;->val$callback:Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;

    iget v2, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg1:I

    iget v0, v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg2:I

    invoke-interface {v1, v2, v0}, Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;->updateItemCount(II)V

    goto :goto_0

    :cond_3
    return-void
.end method
