.class public final Liwk;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lmo;

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Liwo;


# direct methods
.method public constructor <init>(Liwo;Lmo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Liwk;->d:Liwo;

    iput-object p2, p0, Liwk;->a:Lmo;

    iput-object p3, p0, Liwk;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Liwk;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Liwk;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Liwk;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Liwk;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Liwk;->d:Liwo;

    iget-object v0, p0, Liwk;->a:Lmo;

    invoke-virtual {p1, v0}, Liwo;->A(Lmo;)V

    iget-object p1, p0, Liwk;->d:Liwo;

    iget-object v0, p0, Liwk;->a:Lmo;

    invoke-virtual {p1, v0}, Llv;->l(Lmo;)V

    iget-object p1, p0, Liwk;->d:Liwo;

    iget-object p1, p1, Liwo;->r:Ljava/util/ArrayList;

    iget-object v0, p0, Liwk;->a:Lmo;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Liwk;->d:Liwo;

    invoke-virtual {p1}, Liwo;->D()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
