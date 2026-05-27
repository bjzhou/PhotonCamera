.class Lcom/agc/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field private mShouldReactToLongPress:Z

.field final synthetic this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/ItemTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->mShouldReactToLongPress:Z

    return-void
.end method


# virtual methods
.method public doNotReactToLongPress()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->mShouldReactToLongPress:Z

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->mShouldReactToLongPress:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/agc/widget/recyclerview/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v1, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object v2, v1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/agc/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v2, v1, v0}, Lcom/agc/widget/recyclerview/ItemTouchHelper$Callback;->hasDragFlag(Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget-object v2, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget v2, v2, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iput v2, v1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mInitialTouchX:F

    iput p1, v1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mInitialTouchY:F

    const/4 p1, 0x0

    iput p1, v1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mDy:F

    iput p1, v1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mDx:F

    iget-object p1, v1, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/agc/widget/recyclerview/ItemTouchHelper$Callback;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/agc/widget/recyclerview/ItemTouchHelper;->select(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)V

    :cond_2
    return-void
.end method
