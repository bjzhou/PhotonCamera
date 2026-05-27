.class public final Lavn;
.super Lavi;


# instance fields
.field final synthetic a:Landroidx/wear/widget/drawer/PageIndicatorView;


# direct methods
.method public constructor <init>(Landroidx/wear/widget/drawer/PageIndicatorView;)V
    .locals 0

    iput-object p1, p0, Lavn;->a:Landroidx/wear/widget/drawer/PageIndicatorView;

    invoke-direct {p0}, Lavi;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lavn;->a:Landroidx/wear/widget/drawer/PageIndicatorView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/wear/widget/drawer/PageIndicatorView;->c:Z

    invoke-virtual {v0}, Landroidx/wear/widget/drawer/PageIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lavn;->a:Landroidx/wear/widget/drawer/PageIndicatorView;

    iget v1, v1, Landroidx/wear/widget/drawer/PageIndicatorView;->a:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lavn;->a:Landroidx/wear/widget/drawer/PageIndicatorView;

    iget v1, v1, Landroidx/wear/widget/drawer/PageIndicatorView;->b:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
