.class public final Lmhi;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lmhq;


# direct methods
.method public constructor <init>(Lmhq;)V
    .locals 0

    iput-object p1, p0, Lmhi;->a:Lmhq;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lmhi;->a:Lmhq;

    const/4 v0, 0x0

    iput v0, p1, Lmhq;->A:I

    const/4 v0, 0x0

    iput-object v0, p1, Lmhq;->v:Landroid/animation/Animator;

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lmhi;->a:Lmhq;

    iget-object v0, v0, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lmii;->g(IZ)V

    iget-object v0, p0, Lmhi;->a:Lmhq;

    const/4 v1, 0x2

    iput v1, v0, Lmhq;->A:I

    iput-object p1, v0, Lmhq;->v:Landroid/animation/Animator;

    return-void
.end method
