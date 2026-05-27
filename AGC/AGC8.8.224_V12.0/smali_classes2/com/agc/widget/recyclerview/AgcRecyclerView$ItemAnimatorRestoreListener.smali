.class Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimatorRestoreListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemAnimatorRestoreListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mShadowedHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mShadowingHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    if-nez v0, :cond_0

    iput-object v1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mShadowedHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    :cond_0
    iput-object v1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mShadowingHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldBeKeptAsChild()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method
