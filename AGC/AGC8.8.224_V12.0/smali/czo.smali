.class final Lczo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lczp;


# direct methods
.method public constructor <init>(Lczp;Z)V
    .locals 0

    iput-object p1, p0, Lczo;->b:Lczp;

    iput-boolean p2, p0, Lczo;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lczo;->b:Lczp;

    const/4 v0, 0x0

    iput-object v0, p1, Lczp;->n:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lczo;->b:Lczp;

    iget-object p1, p1, Lczp;->f:Liaj;

    iget-boolean v0, p0, Lczo;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Liad;->b()V

    return-void

    :cond_0
    invoke-virtual {p1}, Liad;->c()V

    return-void
.end method
