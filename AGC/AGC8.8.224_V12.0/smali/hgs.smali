.class public final synthetic Lhgs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/camera/bottombar/BottomBarLayoutListener;


# instance fields
.field public final synthetic a:Lhgw;


# direct methods
.method public synthetic constructor <init>(Lhgw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhgs;->a:Lhgw;

    return-void
.end method


# virtual methods
.method public final onBottomBarLayoutChange()V
    .locals 5

    iget-object v0, p0, Lhgs;->a:Lhgw;

    iget v1, v0, Lhgw;->r:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lhgw;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, v0, Lhgw;->o:Landroid/view/View;

    iget-object v3, v0, Lhgw;->l:Liko;

    iget-object v4, v0, Lhgw;->e:Lmrl;

    invoke-interface {v4}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhyt;

    iget-object v4, v4, Lhyt;->a:Lhys;

    iget-object v4, v4, Lhys;->i:Lhyn;

    invoke-virtual {v0, v3, v4}, Lhgw;->j(Liko;Lhyn;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lhgw;->m(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lhgw;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lhfi;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v3}, Lhfi;-><init>(Lhgw;I)V

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lhgw;->e:Lmrl;

    invoke-interface {v1}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhyt;

    iget-object v1, v1, Lhyt;->a:Lhys;

    iget-object v1, v1, Lhys;->i:Lhyn;

    invoke-static {v1}, Ljji;->m(Lhyn;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lhgw;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    iget-object v1, v0, Lhgw;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lhfi;

    invoke-direct {v2, v0, v3}, Lhfi;-><init>(Lhgw;I)V

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
