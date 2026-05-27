.class public final Lmhh;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lmhq;

.field private b:Z


# direct methods
.method public constructor <init>(Lmhq;)V
    .locals 0

    iput-object p1, p0, Lmhh;->a:Lmhq;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmhh;->b:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lmhh;->a:Lmhq;

    const/4 v0, 0x0

    iput v0, p1, Lmhq;->A:I

    const/4 v1, 0x0

    iput-object v1, p1, Lmhq;->v:Landroid/animation/Animator;

    iget-boolean v1, p0, Lmhh;->b:Z

    if-nez v1, :cond_0

    iget-object p1, p1, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lmii;->g(IZ)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lmhh;->a:Lmhq;

    iget-object v0, v0, Lmhq;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lmii;->g(IZ)V

    iget-object v0, p0, Lmhh;->a:Lmhq;

    const/4 v2, 0x1

    iput v2, v0, Lmhq;->A:I

    iput-object p1, v0, Lmhq;->v:Landroid/animation/Animator;

    iput-boolean v1, p0, Lmhh;->b:Z

    return-void
.end method
