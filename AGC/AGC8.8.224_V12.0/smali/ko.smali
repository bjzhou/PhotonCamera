.class final Lko;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lkp;

.field private b:Z


# direct methods
.method public constructor <init>(Lkp;)V
    .locals 0

    iput-object p1, p0, Lko;->a:Lkp;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lko;->b:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lko;->b:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Lko;->b:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lko;->b:Z

    return-void

    :cond_0
    iget-object p1, p0, Lko;->a:Lkp;

    iget-object p1, p1, Lkp;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    iget-object p1, p0, Lko;->a:Lkp;

    iput v0, p1, Lkp;->q:I

    invoke-virtual {p1, v0}, Lkp;->u(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lko;->a:Lkp;

    const/4 v0, 0x2

    iput v0, p1, Lkp;->q:I

    invoke-virtual {p1}, Lkp;->t()V

    return-void
.end method
