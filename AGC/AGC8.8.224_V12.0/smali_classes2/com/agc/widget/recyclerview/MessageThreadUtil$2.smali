.class Lcom/agc/widget/recyclerview/MessageThreadUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/recyclerview/MessageThreadUtil;->getBackgroundProxy(Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;)Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final LOAD_TILE:I = 0x3

.field static final RECYCLE_TILE:I = 0x4

.field static final REFRESH:I = 0x1

.field static final UPDATE_RANGE:I = 0x2


# instance fields
.field private mBackgroundRunnable:Ljava/lang/Runnable;

.field mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final mQueue:Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;

.field final synthetic this$0:Lcom/agc/widget/recyclerview/MessageThreadUtil;

.field final synthetic val$callback:Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/MessageThreadUtil;Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->this$0:Lcom/agc/widget/recyclerview/MessageThreadUtil;

    iput-object p2, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->val$callback:Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;

    invoke-direct {p1}, Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->mQueue:Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lcom/agc/widget/recyclerview/MessageThreadUtil$2$1;

    invoke-direct {p1, p0}, Lcom/agc/widget/recyclerview/MessageThreadUtil$2$1;-><init>(Lcom/agc/widget/recyclerview/MessageThreadUtil$2;)V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->mBackgroundRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private maybeExecuteBackgroundRunnable()V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->mBackgroundRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private sendMessage(Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->mQueue:Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;->sendMessage(Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;)V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->maybeExecuteBackgroundRunnable()V

    return-void
.end method

.method private sendMessageAtFrontOfQueue(Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->mQueue:Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;->sendMessageAtFrontOfQueue(Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;)V

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->maybeExecuteBackgroundRunnable()V

    return-void
.end method


# virtual methods
.method public loadTile(II)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p1, p2}, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->sendMessage(Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;)V

    return-void
.end method

.method public recycleTile(Lcom/agc/widget/recyclerview/TileList$Tile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->sendMessage(Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;)V

    return-void
.end method

.method public refresh(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->sendMessageAtFrontOfQueue(Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;)V

    return-void
.end method

.method public updateRange(IIIII)V
    .locals 7

    const/4 v0, 0x2

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->obtainMessage(IIIIIILjava/lang/Object;)Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;->sendMessageAtFrontOfQueue(Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;)V

    return-void
.end method
