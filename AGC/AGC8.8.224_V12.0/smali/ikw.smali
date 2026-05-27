.class public final Likw;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Likx;


# direct methods
.method public constructor <init>(Likx;)V
    .locals 0

    iput-object p1, p0, Likw;->a:Likx;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Likw;->a:Likx;

    invoke-virtual {p1}, Likx;->b()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Likw;->a:Likx;

    iget-object p1, p1, Likx;->a:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Likw;->a:Likx;

    invoke-virtual {p1}, Likx;->b()V

    return-void
.end method
