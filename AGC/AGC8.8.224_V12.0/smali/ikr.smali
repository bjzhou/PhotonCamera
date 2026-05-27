.class public final Likr;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Likr;->c:I

    iput-object p1, p0, Likr;->a:Landroid/view/View;

    iput p2, p0, Likr;->b:I

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Likr;->a:Landroid/view/View;

    iget v0, p0, Likr;->c:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Likr;->b:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Likr;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Likr;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    iput p1, p0, Likr;->c:I

    iget p1, p0, Likr;->b:I

    if-nez p1, :cond_0

    iget-object p1, p0, Likr;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
