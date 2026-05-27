.class Lcom/agc/widget/recyclerview/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/AgcRecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/ItemTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lcom/agc/widget/recyclerview/AgcRecyclerView;Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mInitialTouchX:F

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mInitialTouchY:F

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/ItemTouchHelper;->obtainVelocityTracker()V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object v2, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    if-nez v2, :cond_4

    invoke-virtual {p1, p2}, Lcom/agc/widget/recyclerview/ItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget v3, v2, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mInitialTouchX:F

    iget v4, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mInitialTouchX:F

    iget v3, v2, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mInitialTouchY:F

    iget v4, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mInitialTouchY:F

    iget-object v3, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    invoke-virtual {v2, v3, v0}, Lcom/agc/widget/recyclerview/ItemTouchHelper;->endRecoverAnimation(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Z)V

    iget-object v2, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object v2, v2, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v3, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    iget-object v3, v3, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object v3, v2, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/agc/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v2, v2, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v4, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    invoke-virtual {v3, v2, v4}, Lcom/agc/widget/recyclerview/ItemTouchHelper$Callback;->clearView(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    :cond_0
    iget-object v2, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object v3, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    iget p1, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mActionState:I

    invoke-virtual {v2, v3, p1}, Lcom/agc/widget/recyclerview/ItemTouchHelper;->select(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget v2, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {p1, p2, v2, v1}, Lcom/agc/widget/recyclerview/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    const/4 v3, -0x1

    if-eq p1, v2, :cond_3

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget v2, v2, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    if-eq v2, v3, :cond_4

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ltz v2, :cond_4

    iget-object v3, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {v3, p1, p2, v2}, Lcom/agc/widget/recyclerview/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iput v3, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/agc/widget/recyclerview/ItemTouchHelper;->select(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_5
    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/agc/widget/recyclerview/ItemTouchHelper;->select(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onTouchEvent(Lcom/agc/widget/recyclerview/AgcRecyclerView;Landroid/view/MotionEvent;)V
    .locals 7

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget p1, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget v1, v1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {v2, p1, p2, v1}, Lcom/agc/widget/recyclerview/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)V

    :cond_2
    iget-object v2, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object v3, v2, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    if-nez v3, :cond_3

    return-void

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v5, :cond_8

    const/4 v6, 0x2

    if-eq p1, v6, :cond_7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget v2, v1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    if-ne v0, v2, :cond_9

    if-nez p1, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget v1, v0, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v0, p2, v1, p1}, Lcom/agc/widget/recyclerview/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    goto :goto_1

    :cond_6
    iget-object p1, v2, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    :cond_7
    if-ltz v1, :cond_9

    iget p1, v2, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v2, p2, p1, v1}, Lcom/agc/widget/recyclerview/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {p1, v3}, Lcom/agc/widget/recyclerview/ItemTouchHelper;->moveIfNecessary(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object p2, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v4}, Lcom/agc/widget/recyclerview/ItemTouchHelper;->select(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iput v0, p1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    :cond_9
    :goto_1
    return-void
.end method
