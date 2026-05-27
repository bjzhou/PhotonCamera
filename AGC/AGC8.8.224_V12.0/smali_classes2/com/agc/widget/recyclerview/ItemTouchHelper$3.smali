.class Lcom/agc/widget/recyclerview/ItemTouchHelper$3;
.super Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/recyclerview/ItemTouchHelper;->select(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

.field final synthetic val$prevSelected:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

.field final synthetic val$swipeDir:I


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/ItemTouchHelper;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;IIFFFFILcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Lcom/agc/widget/recyclerview/ItemTouchHelper$3;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    move/from16 v0, p9

    iput v0, v8, Lcom/agc/widget/recyclerview/ItemTouchHelper$3;->val$swipeDir:I

    move-object/from16 v0, p10

    iput-object v0, v8, Lcom/agc/widget/recyclerview/ItemTouchHelper$3;->val$prevSelected:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;IIFFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-boolean p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$3;->val$swipeDir:I

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$3;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object v0, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/agc/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$3;->val$prevSelected:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    invoke-virtual {v0, p1, v1}, Lcom/agc/widget/recyclerview/ItemTouchHelper$Callback;->clearView(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$3;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$3;->val$prevSelected:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mIsPendingCleanup:Z

    iget p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$3;->val$swipeDir:I

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$3;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {v0, p0, p1}, Lcom/agc/widget/recyclerview/ItemTouchHelper;->postDispatchSwipe(Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$3;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object v0, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$3;->val$prevSelected:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1, v1}, Lcom/agc/widget/recyclerview/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    :cond_3
    return-void
.end method
