.class Lcom/agc/widget/recyclerview/MessageThreadUtil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/ThreadUtil;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/MessageThreadUtil$MessageQueue;,
        Lcom/agc/widget/recyclerview/MessageThreadUtil$SyncQueueItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/widget/recyclerview/ThreadUtil<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundProxy(Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;)Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback<",
            "TT;>;)",
            "Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;

    invoke-direct {v0, p0, p1}, Lcom/agc/widget/recyclerview/MessageThreadUtil$2;-><init>(Lcom/agc/widget/recyclerview/MessageThreadUtil;Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;)V

    return-object v0
.end method

.method public getMainThreadProxy(Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;)Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback<",
            "TT;>;)",
            "Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/agc/widget/recyclerview/MessageThreadUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/agc/widget/recyclerview/MessageThreadUtil$1;-><init>(Lcom/agc/widget/recyclerview/MessageThreadUtil;Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;)V

    return-object v0
.end method
