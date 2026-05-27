.class public Lhfm;
.super Ljava/lang/Object;

# interfaces
.implements Lhfh;


# instance fields
.field public final synthetic b:Lhfq;


# direct methods
.method public constructor <init>(Lhfq;)V
    .locals 0

    iput-object p1, p0, Lhfm;->b:Lhfq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final t()V
    .locals 1

    iget-object v0, p0, Lhfm;->b:Lhfq;

    iget-object v0, v0, Lhfq;->p:Lhff;

    invoke-virtual {v0}, Lhff;->c()V

    iget-object v0, p0, Lhfm;->b:Lhfq;

    iget-object v0, v0, Lhfq;->p:Lhff;

    invoke-virtual {v0}, Lhff;->a()V

    return-void
.end method

.method private final u(J)V
    .locals 2

    iget-object v0, p0, Lhfm;->b:Lhfq;

    iget-object v1, v0, Lhfq;->o:Landroid/os/Handler;

    iget-object v0, v0, Lhfq;->q:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lhfm;->b:Lhfq;

    iget-object v1, v0, Lhfq;->o:Landroid/os/Handler;

    iget-object v0, v0, Lhfq;->q:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lhfm;->b:Lhfq;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lhfq;->r(ZZ)V

    return-void
.end method

.method public b(Lchd;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lhfm;->q(Lchd;Z)V

    return-void
.end method

.method public final synthetic bN()V
    .locals 0

    return-void
.end method

.method public final synthetic bP()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final cj()V
    .locals 0

    invoke-virtual {p0}, Lhfm;->r()V

    invoke-direct {p0}, Lhfm;->t()V

    return-void
.end method

.method public d(Lchd;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lhfm;->q(Lchd;Z)V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lhfm;->b:Lhfq;

    invoke-static {v0}, Lhfq;->t(Lhfq;)V

    iget-object v0, p0, Lhfm;->b:Lhfq;

    iget-object v1, v0, Lhfq;->m:Lchj;

    invoke-interface {v1}, Lchj;->b()Lchd;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lhfq;->q(Lchd;)Lnou;

    move-result-object v0

    new-instance v1, Lgij;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lgij;-><init>(Lhfm;I)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lhfm;->b:Lhfq;

    iget-object v0, v0, Lhfq;->r:Lhfv;

    invoke-interface {v0}, Lhfv;->c()V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lhfm;->b:Lhfq;

    iget-object v1, v0, Lhfq;->o:Landroid/os/Handler;

    iget-object v0, v0, Lhfq;->q:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic h()V
    .locals 0

    return-void
.end method

.method public final synthetic i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public final synthetic k()V
    .locals 0

    return-void
.end method

.method public final synthetic l(Landroid/content/pm/ResolveInfo;)V
    .locals 0

    return-void
.end method

.method public final synthetic m()V
    .locals 0

    return-void
.end method

.method public final synthetic n()V
    .locals 0

    return-void
.end method

.method public final synthetic o()V
    .locals 0

    return-void
.end method

.method public final p(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lhfm;->u(J)V

    invoke-direct {p0}, Lhfm;->t()V

    return-void
.end method

.method public final q(Lchd;Z)V
    .locals 2

    iget-object v0, p0, Lhfm;->b:Lhfq;

    iput-object p1, v0, Lhfq;->t:Lchd;

    iget-object p1, v0, Lhfq;->p:Lhff;

    sget-object v0, Lhfe;->b:Lhfe;

    invoke-virtual {p1, v0}, Lhff;->d(Lhfe;)V

    iget-object p1, p0, Lhfm;->b:Lhfq;

    iget-object p1, p1, Lhfq;->p:Lhff;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lhff;->f(I)V

    iget-object p1, p0, Lhfm;->b:Lhfq;

    iget-object p1, p1, Lhfq;->p:Lhff;

    const/4 v1, 0x1

    if-eq v1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, v0}, Lhff;->e(I)V

    return-void
.end method

.method public final r()V
    .locals 2

    iget-object v0, p0, Lhfm;->b:Lhfq;

    iget-object v0, v0, Lhfq;->j:Landroid/content/res/Resources;

    const v1, 0x7f0c00a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lhfm;->u(J)V

    return-void
.end method
