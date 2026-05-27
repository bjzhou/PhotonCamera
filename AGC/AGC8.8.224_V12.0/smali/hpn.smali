.class final Lhpn;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lhpq;


# direct methods
.method public constructor <init>(Lhpq;)V
    .locals 0

    iput-object p1, p0, Lhpn;->a:Lhpq;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lhpn;->a:Lhpq;

    invoke-virtual {v0}, Lhpq;->j()V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
