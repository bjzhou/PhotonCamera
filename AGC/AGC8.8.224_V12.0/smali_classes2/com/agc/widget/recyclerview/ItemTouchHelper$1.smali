.class Lcom/agc/widget/recyclerview/ItemTouchHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$1;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$1;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/ItemTouchHelper;->scrollIfNecessary()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$1;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/ItemTouchHelper;->moveIfNecessary(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$1;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object v1, v0, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ItemTouchHelper$1;->this$0:Lcom/agc/widget/recyclerview/ItemTouchHelper;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/ItemTouchHelper;->mRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
