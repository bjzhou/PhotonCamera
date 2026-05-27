.class public Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field public bottom:I

.field public changeFlags:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setFrom(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object p1

    return-object p1
.end method

.method public setFrom(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 0

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iput p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p2

    iput p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemHolderInfo;->bottom:I

    return-object p0
.end method
