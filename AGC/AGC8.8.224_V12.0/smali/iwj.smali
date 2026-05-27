.class public final Liwj;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lmo;

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Liwo;


# direct methods
.method public constructor <init>(Liwo;Lmo;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Liwj;->c:Liwo;

    iput-object p2, p0, Liwj;->a:Lmo;

    iput-object p3, p0, Liwj;->b:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Liwj;->c:Liwo;

    iget-object v0, p0, Liwj;->a:Lmo;

    invoke-virtual {p1, v0}, Liwo;->B(Lmo;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Liwj;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Liwj;->c:Liwo;

    iget-object v0, p0, Liwj;->a:Lmo;

    invoke-virtual {p1, v0}, Liwo;->B(Lmo;)V

    iget-object p1, p0, Liwj;->c:Liwo;

    iget-object v0, p0, Liwj;->a:Lmo;

    invoke-virtual {p1, v0}, Llv;->l(Lmo;)V

    iget-object p1, p0, Liwj;->c:Liwo;

    iget-object p1, p1, Liwo;->p:Ljava/util/ArrayList;

    iget-object v0, p0, Liwj;->a:Lmo;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Liwj;->c:Liwo;

    invoke-virtual {p1}, Liwo;->D()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
