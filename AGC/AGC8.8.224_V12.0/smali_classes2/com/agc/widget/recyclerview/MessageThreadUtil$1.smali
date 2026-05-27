.class Lcom/agc/widget/recyclerview/MessageThreadUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/recyclerview/MessageThreadUtil;->getMainThreadProxy(Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;)Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final ADD_TILE:I = 0x2

.field static final REMOVE_TILE:I = 0x3

.field static final UPDATE_ITEM_COUNT:I = 0x1


# instance fields
.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mMainThreadRunnable:Ljava/lang/Runnable;

.field final mQueue:Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;

.field final synthetic this$0:Lcom/agc/widget/recyclerview/MessageThreadUtil;

.field final synthetic val$callback:Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/MessageThreadUtil;Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$1;->this$0:Lcom/agc/widget/recyclerview/MessageThreadUtil;

    iput-object p2, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$1;->val$callback:Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;

    invoke-direct {p1}, Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$1;->mQueue:Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$1;->mMainThreadHandler:Landroid/os/Handler;

    new-instance p1, Lcom/agc/widget/recyclerview/MessageThreadUtil$1$1;

    invoke-direct {p1, p0}, Lcom/agc/widget/recyclerview/MessageThreadUtil$1$1;-><init>(Lcom/agc/widget/recyclerview/MessageThreadUtil$1;)V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$1;->mMainThreadRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private sendMessage(Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$1;->mQueue:Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;->sendMessage(Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$1;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$1;->mMainThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addTile(ILcom/agc/widget/recyclerview/TileList$Tile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/agc/widget/recyclerview/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0, p1, p2}, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/MessageThreadUtil$1;->sendMessage(Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;)V

    return-void
.end method

.method public removeTile(II)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p1, p2}, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/MessageThreadUtil$1;->sendMessage(Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;)V

    return-void
.end method

.method public updateItemCount(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/MessageThreadUtil$1;->sendMessage(Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;)V

    return-void
.end method
