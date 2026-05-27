.class public interface abstract Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/ThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MainThreadCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addTile(ILcom/agc/widget/recyclerview/TileList$Tile;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/agc/widget/recyclerview/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract removeTile(II)V
.end method

.method public abstract updateItemCount(II)V
.end method
