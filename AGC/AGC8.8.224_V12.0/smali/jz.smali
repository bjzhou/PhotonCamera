.class final Ljz;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lmo;

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lkf;


# direct methods
.method public constructor <init>(Lkf;Lmo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Ljz;->d:Lkf;

    iput-object p2, p0, Ljz;->a:Lmo;

    iput-object p3, p0, Ljz;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Ljz;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ljz;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Ljz;->c:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Ljz;->d:Lkf;

    iget-object v0, p0, Ljz;->a:Lmo;

    invoke-virtual {p1, v0}, Llv;->l(Lmo;)V

    iget-object p1, p0, Ljz;->d:Lkf;

    iget-object p1, p1, Lkf;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Ljz;->a:Lmo;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Ljz;->d:Lkf;

    invoke-virtual {p1}, Lkf;->a()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
