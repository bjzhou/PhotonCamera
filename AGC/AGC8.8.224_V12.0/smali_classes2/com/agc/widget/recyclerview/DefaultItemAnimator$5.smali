.class Lcom/agc/widget/recyclerview/DefaultItemAnimator$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/recyclerview/DefaultItemAnimator;->animateAddImpl(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/DefaultItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$holder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/DefaultItemAnimator;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$5;->this$0:Lcom/agc/widget/recyclerview/DefaultItemAnimator;

    iput-object p2, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$5;->val$holder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$5;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$5;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$5;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$5;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$5;->this$0:Lcom/agc/widget/recyclerview/DefaultItemAnimator;

    iget-object v0, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$5;->val$holder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/SimpleItemAnimator;->dispatchAddFinished(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    iget-object p1, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$5;->this$0:Lcom/agc/widget/recyclerview/DefaultItemAnimator;

    iget-object p1, p1, Lcom/agc/widget/recyclerview/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$5;->val$holder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$5;->this$0:Lcom/agc/widget/recyclerview/DefaultItemAnimator;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$5;->this$0:Lcom/agc/widget/recyclerview/DefaultItemAnimator;

    iget-object v0, p0, Lcom/agc/widget/recyclerview/DefaultItemAnimator$5;->val$holder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/agc/widget/recyclerview/SimpleItemAnimator;->dispatchAddStarting(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    return-void
.end method
