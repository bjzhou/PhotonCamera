.class Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/MessageThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncQueueItem"
.end annotation


# static fields
.field private static sPool:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

.field private static final sPoolLock:Ljava/lang/Object;


# instance fields
.field public arg1:I

.field public arg2:I

.field public arg3:I

.field public arg4:I

.field public arg5:I

.field public data:Ljava/lang/Object;

.field next:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

.field public what:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->sPoolLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtainMessage(III)Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->obtainMessage(IIIIIILjava/lang/Object;)Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    move-result-object p0

    return-object p0
.end method

.method public static obtainMessage(IIIIIILjava/lang/Object;)Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;
    .locals 3

    sget-object v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->sPoolLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->sPool:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    if-nez v1, :cond_0

    new-instance v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    invoke-direct {v1}, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->next:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    sput-object v2, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->sPool:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->next:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    :goto_0
    iput p0, v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->what:I

    iput p1, v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg1:I

    iput p2, v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg2:I

    iput p3, v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg3:I

    iput p4, v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg4:I

    iput p5, v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg5:I

    iput-object p6, v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static obtainMessage(IILjava/lang/Object;)Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->obtainMessage(IIIIIILjava/lang/Object;)Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public recycle()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->next:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    const/4 v1, 0x0

    iput v1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg5:I

    iput v1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg4:I

    iput v1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg3:I

    iput v1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg2:I

    iput v1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->arg1:I

    iput v1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->what:I

    iput-object v0, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    sget-object v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->sPoolLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->sPool:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->next:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    :cond_0
    sput-object p0, Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;->sPool:Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
