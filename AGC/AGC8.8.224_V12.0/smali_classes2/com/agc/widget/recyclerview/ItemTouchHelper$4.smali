.class Lcom/agc/widget/recyclerview/ItemTouchHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/recyclerview/ItemTouchHelper;->postDispatchSwipe(Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

.field final synthetic val$anim:Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

.field final synthetic val$swipeDir:I


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/ItemTouchHelper;Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$4;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iput-object p2, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$4;->val$anim:Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    iput p3, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$4;->val$swipeDir:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$4;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$4;->val$anim:Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    iget-boolean v1, v0, Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$4;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getItemAnimator()Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->isRunning(Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$4;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ItemTouchHelper;->hasRunningRecoverAnim()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$4;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/agc/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$4;->val$anim:Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    iget v2, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$4;->val$swipeDir:I

    invoke-virtual {v0, v1, v2}, Lcom/agc/widget/recyclerview/ItemTouchHelper$Callback;->onSwiped(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$4;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
