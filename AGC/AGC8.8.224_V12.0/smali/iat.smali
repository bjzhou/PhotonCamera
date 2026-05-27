.class final Liat;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Liau;


# direct methods
.method public constructor <init>(Liau;)V
    .locals 0

    iput-object p1, p0, Liat;->a:Liau;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Liat;->a:Liau;

    iget-object v0, p1, Liau;->h:Licb;

    iget-object v1, p1, Liau;->g:Lika;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Licb;->o(Lika;Z)V

    iget-object v0, p1, Liau;->k:Liaw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Liaw;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Liau;->f:Z

    iget-object p1, p0, Liat;->a:Liau;

    invoke-virtual {p1, v2}, Liau;->h(Z)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Liat;->a:Liau;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Liau;->h(Z)V

    return-void
.end method
