.class final Lhgu;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lhgw;


# direct methods
.method public constructor <init>(Lhgw;)V
    .locals 0

    iput-object p1, p0, Lhgu;->a:Lhgw;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lhgu;->a:Lhgw;

    const/4 v0, 0x0

    iput-object v0, p1, Lhgw;->q:Landroid/animation/Animator;

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lhgu;->a:Lhgw;

    invoke-virtual {p1}, Lhgw;->k()V

    return-void
.end method
