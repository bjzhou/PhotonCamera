.class public abstract Lcom/agc/widget/recyclerview/ItemTouchHelper$SimpleCallback;
.super Lcom/agc/widget/recyclerview/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleCallback"
.end annotation


# instance fields
.field private mDefaultDragDirs:I

.field private mDefaultSwipeDirs:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/ItemTouchHelper$Callback;-><init>()V

    iput p2, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    iput p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    return-void
.end method


# virtual methods
.method public getDragDirs(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)I
    .locals 0

    iget p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    return p1
.end method

.method public getMovementFlags(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/recyclerview/ItemTouchHelper$SimpleCallback;->getDragDirs(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/recyclerview/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/agc/widget/recyclerview/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public getSwipeDirs(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)I
    .locals 0

    iget p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    return p1
.end method

.method public setDefaultDragDirs(I)V
    .locals 0

    iput p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    return-void
.end method

.method public setDefaultSwipeDirs(I)V
    .locals 0

    iput p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    return-void
.end method
