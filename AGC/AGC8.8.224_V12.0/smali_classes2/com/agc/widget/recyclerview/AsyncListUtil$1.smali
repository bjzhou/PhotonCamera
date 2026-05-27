.class Lcom/agc/widget/recyclerview/AsyncListUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AsyncListUtil;
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


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/AsyncListUtil;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/AsyncListUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil$1;->this$0:Lcom/agc/widget/recyclerview/AsyncListUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isRequestedGeneration(I)Z
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil$1;->this$0:Lcom/agc/widget/recyclerview/AsyncListUtil;

    iget v0, v0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mRequestedGeneration:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private recycleAllTiles()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil$1;->this$0:Lcom/agc/widget/recyclerview/AsyncListUtil;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AsyncListUtil;->mTileList:Lcom/agc/widget/recyclerview/TileList;

    invoke-virtual {v1}, Lcom/agc/widget/recyclerview/TileList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil$1;->this$0:Lcom/agc/widget/recyclerview/AsyncListUtil;

    iget-object v2, v1, Lcom/agc/widget/recyclerview/AsyncListUtil;->mBackgroundProxy:Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AsyncListUtil;->mTileList:Lcom/agc/widget/recyclerview/TileList;

    invoke-virtual {v1, v0}, Lcom/agc/widget/recyclerview/TileList;->getAtIndex(I)Lcom/agc/widget/recyclerview/TileList$Tile;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;->recycleTile(Lcom/agc/widget/recyclerview/TileList$Tile;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil$1;->this$0:Lcom/agc/widget/recyclerview/AsyncListUtil;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mTileList:Lcom/agc/widget/recyclerview/TileList;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/TileList;->clear()V

    return-void
.end method


# virtual methods
.method public addTile(ILcom/agc/widget/recyclerview/TileList$Tile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/agc/widget/recyclerview/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AsyncListUtil$1;->isRequestedGeneration(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil$1;->this$0:Lcom/agc/widget/recyclerview/AsyncListUtil;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AsyncListUtil;->mBackgroundProxy:Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;

    invoke-interface {p1, p2}, Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;->recycleTile(Lcom/agc/widget/recyclerview/TileList$Tile;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil$1;->this$0:Lcom/agc/widget/recyclerview/AsyncListUtil;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AsyncListUtil;->mTileList:Lcom/agc/widget/recyclerview/TileList;

    invoke-virtual {p1, p2}, Lcom/agc/widget/recyclerview/TileList;->addOrReplace(Lcom/agc/widget/recyclerview/TileList$Tile;)Lcom/agc/widget/recyclerview/TileList$Tile;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicate tile @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/agc/widget/recyclerview/TileList$Tile;->mStartPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsyncListUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AsyncListUtil$1;->this$0:Lcom/agc/widget/recyclerview/AsyncListUtil;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AsyncListUtil;->mBackgroundProxy:Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;

    invoke-interface {v0, p1}, Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;->recycleTile(Lcom/agc/widget/recyclerview/TileList$Tile;)V

    :cond_1
    iget p1, p2, Lcom/agc/widget/recyclerview/TileList$Tile;->mStartPosition:I

    iget v0, p2, Lcom/agc/widget/recyclerview/TileList$Tile;->mItemCount:I

    add-int/2addr p1, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil$1;->this$0:Lcom/agc/widget/recyclerview/AsyncListUtil;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil$1;->this$0:Lcom/agc/widget/recyclerview/AsyncListUtil;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    iget v2, p2, Lcom/agc/widget/recyclerview/TileList$Tile;->mStartPosition:I

    if-gt v2, v1, :cond_2

    if-ge v1, p1, :cond_2

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AsyncListUtil$1;->this$0:Lcom/agc/widget/recyclerview/AsyncListUtil;

    iget-object v2, v2, Lcom/agc/widget/recyclerview/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    iget-object v2, p0, Lcom/agc/widget/recyclerview/AsyncListUtil$1;->this$0:Lcom/agc/widget/recyclerview/AsyncListUtil;

    iget-object v2, v2, Lcom/agc/widget/recyclerview/AsyncListUtil;->mViewCallback:Lcom/agc/widget/recyclerview/AsyncListUtil$ViewCallback;

    invoke-virtual {v2, v1}, Lcom/agc/widget/recyclerview/AsyncListUtil$ViewCallback;->onItemLoaded(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public removeTile(II)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AsyncListUtil$1;->isRequestedGeneration(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil$1;->this$0:Lcom/agc/widget/recyclerview/AsyncListUtil;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AsyncListUtil;->mTileList:Lcom/agc/widget/recyclerview/TileList;

    invoke-virtual {p1, p2}, Lcom/agc/widget/recyclerview/TileList;->removeAtPos(I)Lcom/agc/widget/recyclerview/TileList$Tile;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tile not found @"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AsyncListUtil"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p2, p0, Lcom/agc/widget/recyclerview/AsyncListUtil$1;->this$0:Lcom/agc/widget/recyclerview/AsyncListUtil;

    iget-object p2, p2, Lcom/agc/widget/recyclerview/AsyncListUtil;->mBackgroundProxy:Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;

    invoke-interface {p2, p1}, Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;->recycleTile(Lcom/agc/widget/recyclerview/TileList$Tile;)V

    return-void
.end method

.method public updateItemCount(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AsyncListUtil$1;->isRequestedGeneration(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil$1;->this$0:Lcom/agc/widget/recyclerview/AsyncListUtil;

    iput p2, p1, Lcom/agc/widget/recyclerview/AsyncListUtil;->mItemCount:I

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AsyncListUtil;->mViewCallback:Lcom/agc/widget/recyclerview/AsyncListUtil$ViewCallback;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AsyncListUtil$ViewCallback;->onDataRefresh()V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil$1;->this$0:Lcom/agc/widget/recyclerview/AsyncListUtil;

    iget p2, p1, Lcom/agc/widget/recyclerview/AsyncListUtil;->mRequestedGeneration:I

    iput p2, p1, Lcom/agc/widget/recyclerview/AsyncListUtil;->mDisplayedGeneration:I

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AsyncListUtil$1;->recycleAllTiles()V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AsyncListUtil$1;->this$0:Lcom/agc/widget/recyclerview/AsyncListUtil;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/agc/widget/recyclerview/AsyncListUtil;->mAllowScrollHints:Z

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AsyncListUtil;->updateRange()V

    return-void
.end method
