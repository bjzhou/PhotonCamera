.class public final Lafy;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Laga;


# direct methods
.method public constructor <init>(Laga;)V
    .locals 0

    iput-object p1, p0, Lafy;->a:Laga;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lafy;->a:Laga;

    invoke-interface {p1}, Laga;->c()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lafy;->a:Laga;

    invoke-interface {p1}, Laga;->a()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lafy;->a:Laga;

    invoke-interface {p1}, Laga;->b()V

    return-void
.end method
