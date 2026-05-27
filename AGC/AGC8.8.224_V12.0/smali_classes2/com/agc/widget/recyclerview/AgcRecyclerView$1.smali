.class Lcom/agc/widget/recyclerview/AgcRecyclerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$1;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$1;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mFirstLayoutComplete:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$1;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mIsAttached:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->requestLayout()V

    return-void

    :cond_1
    iget-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mLayoutWasDefered:Z

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->consumePendingUpdateOperations()V

    :cond_3
    :goto_0
    return-void
.end method
