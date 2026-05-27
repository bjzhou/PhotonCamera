.class final Lihw;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lihx;


# direct methods
.method public constructor <init>(Lihx;)V
    .locals 0

    iput-object p1, p0, Lihw;->a:Lihx;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lihw;->a:Lihx;

    const/4 v0, 0x1

    iput v0, p1, Lihx;->n:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lihx;->setVisibility(I)V

    iget-object p1, p0, Lihw;->a:Lihx;

    invoke-static {p1}, Lihx;->d(Lihx;)V

    iget-object p1, p0, Lihw;->a:Lihx;

    invoke-static {p1}, Lihx;->c(Lihx;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lihw;->a:Lihx;

    const/4 v0, 0x1

    iput v0, p1, Lihx;->n:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lihx;->setVisibility(I)V

    iget-object p1, p0, Lihw;->a:Lihx;

    invoke-static {p1}, Lihx;->d(Lihx;)V

    iget-object p1, p0, Lihw;->a:Lihx;

    invoke-static {p1}, Lihx;->c(Lihx;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lihw;->a:Lihx;

    iget v0, p1, Lihx;->f:I

    iput v0, p1, Lihx;->d:I

    const/4 v0, 0x3

    iput v0, p1, Lihx;->n:I

    return-void
.end method
