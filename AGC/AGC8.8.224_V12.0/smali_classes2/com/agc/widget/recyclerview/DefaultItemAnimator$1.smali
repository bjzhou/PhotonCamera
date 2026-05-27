.class Lcom/agc/widget/recyclerview/DefaultItemAnimator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/recyclerview/DefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/DefaultItemAnimator;

.field final synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$1;->this$0:Lcom/agc/widget/recyclerview/DefaultItemAnimator;

    iput-object p2, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/DefaultItemAnimator$MoveInfo;

    iget-object v2, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$1;->this$0:Lcom/agc/widget/recyclerview/DefaultItemAnimator;

    iget-object v3, v1, Lcom/agc/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    iget v4, v1, Lcom/agc/widget/recyclerview/DefaultItemAnimator$MoveInfo;->fromX:I

    iget v5, v1, Lcom/agc/widget/recyclerview/DefaultItemAnimator$MoveInfo;->fromY:I

    iget v6, v1, Lcom/agc/widget/recyclerview/DefaultItemAnimator$MoveInfo;->toX:I

    iget v7, v1, Lcom/agc/widget/recyclerview/DefaultItemAnimator$MoveInfo;->toY:I

    invoke-virtual/range {v2 .. v7}, Lcom/agc/widget/recyclerview/DefaultItemAnimator;->animateMoveImpl(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$1;->this$0:Lcom/agc/widget/recyclerview/DefaultItemAnimator;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
