.class Lcom/agc/widget/recyclerview/TileList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/TileList$Tile;
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


# instance fields
.field mLastAccessedTile:Lcom/agc/widget/recyclerview/TileList$Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/widget/recyclerview/TileList$Tile<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mTileSize:I

.field private final mTiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/agc/widget/recyclerview/TileList$Tile<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/TileList;->mTiles:Landroid/util/SparseArray;

    iput p1, p0, Lcom/agc/widget/recyclerview/TileList;->mTileSize:I

    return-void
.end method


# virtual methods
.method public addOrReplace(Lcom/agc/widget/recyclerview/TileList$Tile;)Lcom/agc/widget/recyclerview/TileList$Tile;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/TileList$Tile<",
            "TT;>;)",
            "Lcom/agc/widget/recyclerview/TileList$Tile<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/TileList;->mTiles:Landroid/util/SparseArray;

    iget v1, p1, Lcom/agc/widget/recyclerview/TileList$Tile;->mStartPosition:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/TileList;->mTiles:Landroid/util/SparseArray;

    iget v1, p1, Lcom/agc/widget/recyclerview/TileList$Tile;->mStartPosition:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/TileList$Tile;

    iget-object v2, p0, Lcom/agc/widget/recyclerview/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/TileList;->mLastAccessedTile:Lcom/agc/widget/recyclerview/TileList$Tile;

    if-ne v0, v1, :cond_1

    iput-object p1, p0, Lcom/agc/widget/recyclerview/TileList;->mLastAccessedTile:Lcom/agc/widget/recyclerview/TileList$Tile;

    :cond_1
    return-object v1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public getAtIndex(I)Lcom/agc/widget/recyclerview/TileList$Tile;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/agc/widget/recyclerview/TileList$Tile<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/TileList$Tile;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemAt(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/TileList;->mLastAccessedTile:Lcom/agc/widget/recyclerview/TileList$Tile;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/TileList$Tile;->containsPosition(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/agc/widget/recyclerview/TileList;->mTileSize:I

    rem-int v0, p1, v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/agc/widget/recyclerview/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/TileList$Tile;

    iput-object v0, p0, Lcom/agc/widget/recyclerview/TileList;->mLastAccessedTile:Lcom/agc/widget/recyclerview/TileList$Tile;

    :cond_2
    iget-object v0, p0, Lcom/agc/widget/recyclerview/TileList;->mLastAccessedTile:Lcom/agc/widget/recyclerview/TileList$Tile;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/TileList$Tile;->getByPosition(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeAtPos(I)Lcom/agc/widget/recyclerview/TileList$Tile;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/agc/widget/recyclerview/TileList$Tile<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/TileList$Tile;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/TileList;->mLastAccessedTile:Lcom/agc/widget/recyclerview/TileList$Tile;

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/agc/widget/recyclerview/TileList;->mLastAccessedTile:Lcom/agc/widget/recyclerview/TileList$Tile;

    :cond_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/TileList;->mTiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method
