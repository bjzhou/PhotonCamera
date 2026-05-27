.class public Lcom/agc/widget/recyclerview/AsyncListUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/AsyncListUtil$ViewCallback;,
        Lcom/agc/widget/recyclerview/AsyncListUtil$DataCallback;
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
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AsyncListUtil"


# instance fields
.field mAllowScrollHints:Z

.field private final mBackgroundCallback:Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mBackgroundProxy:Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mDataCallback:Lcom/agc/widget/recyclerview/AsyncListUtil$DataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/widget/recyclerview/AsyncListUtil$DataCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field mDisplayedGeneration:I

.field mItemCount:I

.field private final mMainThreadCallback:Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mMainThreadProxy:Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mMissingPositions:Landroid/util/SparseIntArray;

.field final mPrevRange:[I

.field mRequestedGeneration:I

.field private mScrollHint:I

.field final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mTileList:Lcom/agc/widget/recyclerview/TileList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/widget/recyclerview/TileList<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mTileSize:I

.field final mTmpRange:[I

.field final mTmpRangeExtended:[I

.field final mViewCallback:Lcom/agc/widget/recyclerview/AsyncListUtil$ViewCallback;


# direct methods
.method public constructor <init>(Ljava/lang/Class;ILcom/agc/widget/recyclerview/AsyncListUtil$DataCallback;Lcom/agc/widget/recyclerview/AsyncListUtil$ViewCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Lcom/agc/widget/recyclerview/AsyncListUtil$DataCallback<",
            "TT;>;",
            "Lcom/agc/widget/recyclerview/AsyncListUtil$ViewCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mTmpRange:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mPrevRange:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mTmpRangeExtended:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mScrollHint:I

    iput v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mItemCount:I

    iput v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mDisplayedGeneration:I

    iput v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mRequestedGeneration:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/agc/widget/recyclerview/AsyncListUtil$1;

    invoke-direct {v0, p0}, Lcom/agc/widget/recyclerview/AsyncListUtil$1;-><init>(Lcom/agc/widget/recyclerview/AsyncListUtil;)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mMainThreadCallback:Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;

    new-instance v1, Lcom/agc/widget/recyclerview/AsyncListUtil$2;

    invoke-direct {v1, p0}, Lcom/agc/widget/recyclerview/AsyncListUtil$2;-><init>(Lcom/agc/widget/recyclerview/AsyncListUtil;)V

    iput-object v1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mBackgroundCallback:Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mTClass:Ljava/lang/Class;

    iput p2, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mTileSize:I

    iput-object p3, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mDataCallback:Lcom/agc/widget/recyclerview/AsyncListUtil$DataCallback;

    iput-object p4, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mViewCallback:Lcom/agc/widget/recyclerview/AsyncListUtil$ViewCallback;

    new-instance p1, Lcom/agc/widget/recyclerview/TileList;

    invoke-direct {p1, p2}, Lcom/agc/widget/recyclerview/TileList;-><init>(I)V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mTileList:Lcom/agc/widget/recyclerview/TileList;

    new-instance p1, Lcom/agc/widget/recyclerview/MessageThreadUtil;

    invoke-direct {p1}, Lcom/agc/widget/recyclerview/MessageThreadUtil;-><init>()V

    invoke-interface {p1, v0}, Lcom/agc/widget/recyclerview/ThreadUtil;->getMainThreadProxy(Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;)Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;

    move-result-object p2

    iput-object p2, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mMainThreadProxy:Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;

    invoke-interface {p1, v1}, Lcom/agc/widget/recyclerview/ThreadUtil;->getBackgroundProxy(Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;)Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mBackgroundProxy:Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AsyncListUtil;->refresh()V

    return-void
.end method

.method private isRefreshPending()Z
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mRequestedGeneration:I

    iget v1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mDisplayedGeneration:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mItemCount:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mTileList:Lcom/agc/widget/recyclerview/TileList;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/TileList;->getItemAt(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AsyncListUtil;->isRefreshPending()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not within 0 and "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mItemCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItemCount()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mItemCount:I

    return v0
.end method

.method public varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MAIN] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AsyncListUtil"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRangeChanged()V
    .locals 1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AsyncListUtil;->isRefreshPending()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AsyncListUtil;->updateRange()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mAllowScrollHints:Z

    return-void
.end method

.method public refresh()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mBackgroundProxy:Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;

    iget v1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mRequestedGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mRequestedGeneration:I

    invoke-interface {v0, v1}, Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;->refresh(I)V

    return-void
.end method

.method public updateRange()V
    .locals 10

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mViewCallback:Lcom/agc/widget/recyclerview/AsyncListUtil$ViewCallback;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mTmpRange:[I

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AsyncListUtil$ViewCallback;->getItemRangeInto([I)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mTmpRange:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    if-gt v2, v4, :cond_7

    if-gez v2, :cond_0

    goto :goto_2

    :cond_0
    iget v5, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mItemCount:I

    if-lt v4, v5, :cond_1

    return-void

    :cond_1
    iget-boolean v5, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mAllowScrollHints:Z

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mPrevRange:[I

    aget v6, v5, v3

    if-gt v2, v6, :cond_5

    aget v5, v5, v1

    if-le v5, v4, :cond_3

    goto :goto_0

    :cond_3
    if-ge v2, v5, :cond_4

    iput v3, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mScrollHint:I

    goto :goto_1

    :cond_4
    if-le v2, v5, :cond_6

    const/4 v5, 0x2

    iput v5, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mScrollHint:I

    goto :goto_1

    :cond_5
    :goto_0
    iput v1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mScrollHint:I

    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mPrevRange:[I

    aput v2, v5, v1

    aput v4, v5, v3

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mViewCallback:Lcom/agc/widget/recyclerview/AsyncListUtil$ViewCallback;

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mTmpRangeExtended:[I

    iget v5, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mScrollHint:I

    invoke-virtual {v2, v0, v4, v5}, Lcom/agc/widget/recyclerview/AsyncListUtil$ViewCallback;->extendRangeInto([I[II)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mTmpRangeExtended:[I

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mTmpRange:[I

    aget v2, v2, v1

    aget v4, v0, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mTmpRangeExtended:[I

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mTmpRange:[I

    aget v2, v2, v3

    aget v4, v0, v3

    iget v5, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mItemCount:I

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v3

    iget-object v4, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mBackgroundProxy:Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mTmpRange:[I

    aget v5, v0, v1

    aget v6, v0, v3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mTmpRangeExtended:[I

    aget v7, v0, v1

    aget v8, v0, v3

    iget v9, p0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mScrollHint:I

    invoke-interface/range {v4 .. v9}, Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    :cond_7
    :goto_2
    return-void
.end method
