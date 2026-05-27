.class final Lasd;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lasf;


# direct methods
.method public constructor <init>(Lasf;)V
    .locals 0

    iput-object p1, p0, Lasd;->a:Lasf;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lasd;->a:Lasf;

    invoke-virtual {v0}, Lasf;->p()V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
