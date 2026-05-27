.class final Lieh;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Liei;


# direct methods
.method public constructor <init>(Liei;)V
    .locals 0

    iput-object p1, p0, Lieh;->a:Liei;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lieh;->a:Liei;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Liei;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lieh;->a:Liei;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Liei;->setVisibility(I)V

    return-void
.end method
