.class Lcom/agc/widget/recyclerview/AgcRecyclerView$2;
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

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$2;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$2;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mItemAnimator:Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemAnimator;->runPendingAnimations()V

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$2;->this$0:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/agc/widget/recyclerview/AgcRecyclerView;->mPostedAnimatorRunner:Z

    return-void
.end method
