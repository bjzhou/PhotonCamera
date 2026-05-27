.class public Lcom/agc/widget/recyclerview/AsyncListDiffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/AsyncListDiffer$ListListener;,
        Lcom/agc/widget/recyclerview/AsyncListDiffer$MainThreadExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final sMainThreadExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field final mConfig:Lcom/agc/widget/recyclerview/AsyncDifferConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/widget/recyclerview/AsyncDifferConfig<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/widget/recyclerview/AsyncListDiffer$ListListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field mMainThreadExecutor:Ljava/util/concurrent/Executor;

.field mMaxScheduledGeneration:I

.field private mReadOnlyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mUpdateCallback:Lcom/agc/widget/recyclerview/ListUpdateCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/agc/widget/recyclerview/AsyncListDiffer$MainThreadExecutor;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/AsyncListDiffer$MainThreadExecutor;-><init>()V

    sput-object v0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;Lcom/agc/widget/recyclerview/DiffUtil$ItemCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;",
            "Lcom/agc/widget/recyclerview/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/agc/widget/recyclerview/AdapterListUpdateCallback;

    invoke-direct {v0, p1}, Lcom/agc/widget/recyclerview/AdapterListUpdateCallback;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;)V

    new-instance p1, Lcom/agc/widget/recyclerview/AsyncDifferConfig$Builder;

    invoke-direct {p1, p2}, Lcom/agc/widget/recyclerview/AsyncDifferConfig$Builder;-><init>(Lcom/agc/widget/recyclerview/DiffUtil$ItemCallback;)V

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AsyncDifferConfig$Builder;->build()Lcom/agc/widget/recyclerview/AsyncDifferConfig;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/agc/widget/recyclerview/AsyncListDiffer;-><init>(Lcom/agc/widget/recyclerview/ListUpdateCallback;Lcom/agc/widget/recyclerview/AsyncDifferConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/agc/widget/recyclerview/ListUpdateCallback;Lcom/agc/widget/recyclerview/AsyncDifferConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/ListUpdateCallback;",
            "Lcom/agc/widget/recyclerview/AsyncDifferConfig<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mListeners:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mUpdateCallback:Lcom/agc/widget/recyclerview/ListUpdateCallback;

    iput-object p2, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mConfig:Lcom/agc/widget/recyclerview/AsyncDifferConfig;

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AsyncDifferConfig;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AsyncDifferConfig;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/agc/widget/recyclerview/AsyncListDiffer;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    :goto_0
    iput-object p1, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/AsyncListDiffer$ListListener;

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    invoke-interface {v1, p1, v2}, Lcom/agc/widget/recyclerview/AsyncListDiffer$ListListener;->onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method


# virtual methods
.method public addListListener(Lcom/agc/widget/recyclerview/AsyncListDiffer$ListListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/AsyncListDiffer$ListListener<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCurrentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    return-object v0
.end method

.method public latchList(Ljava/util/List;Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mUpdateCallback:Lcom/agc/widget/recyclerview/ListUpdateCallback;

    invoke-virtual {p2, p1}, Lcom/agc/widget/recyclerview/DiffUtil$DiffResult;->dispatchUpdatesTo(Lcom/agc/widget/recyclerview/ListUpdateCallback;)V

    invoke-direct {p0, v0, p3}, Lcom/agc/widget/recyclerview/AsyncListDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeListListener(Lcom/agc/widget/recyclerview/AsyncListDiffer$ListListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/AsyncListDiffer$ListListener<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public submitList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/agc/widget/recyclerview/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public submitList(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mMaxScheduledGeneration:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mMaxScheduledGeneration:I

    iget-object v3, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mList:Ljava/util/List;

    if-ne p1, v3, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mList:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mUpdateCallback:Lcom/agc/widget/recyclerview/ListUpdateCallback;

    invoke-interface {v2, v1, p1}, Lcom/agc/widget/recyclerview/ListUpdateCallback;->onRemoved(II)V

    invoke-direct {p0, v0, p2}, Lcom/agc/widget/recyclerview/AsyncListDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    if-nez v3, :cond_3

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mUpdateCallback:Lcom/agc/widget/recyclerview/ListUpdateCallback;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v2, v1, p1}, Lcom/agc/widget/recyclerview/ListUpdateCallback;->onInserted(II)V

    invoke-direct {p0, v0, p2}, Lcom/agc/widget/recyclerview/AsyncListDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListDiffer;->mConfig:Lcom/agc/widget/recyclerview/AsyncDifferConfig;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AsyncDifferConfig;->getBackgroundThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Lcom/agc/widget/recyclerview/AsyncListDiffer$1;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/agc/widget/recyclerview/AsyncListDiffer$1;-><init>(Lcom/agc/widget/recyclerview/AsyncListDiffer;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
