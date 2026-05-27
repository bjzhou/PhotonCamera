.class Lhfp;
.super Ljava/lang/Object;

# interfaces
.implements Lhfh;


# instance fields
.field final synthetic b:Lhfq;


# direct methods
.method public constructor <init>(Lhfq;)V
    .locals 0

    iput-object p1, p0, Lhfp;->b:Lhfq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lhfp;->b:Lhfq;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lhfq;->r(ZZ)V

    return-void
.end method

.method public final synthetic b(Lchd;Z)V
    .locals 0

    return-void
.end method

.method public bN()V
    .locals 0

    return-void
.end method

.method public final synthetic bP()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic cj()V
    .locals 0

    return-void
.end method

.method public final synthetic d(Lchd;Z)V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 6

    iget-object v0, p0, Lhfp;->b:Lhfq;

    iget-object v1, v0, Lhfq;->u:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lhfq;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lhfp;->b:Lhfq;

    iget-object v3, v2, Lhfq;->n:Lhfb;

    iget-object v2, v2, Lhfq;->t:Lchd;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v1, v2}, Lhfb;->j(Landroid/content/pm/ResolveInfo;Lchd;)I

    move-result v2

    iget-object v3, p0, Lhfp;->b:Lhfq;

    iget-object v3, v3, Lhfq;->p:Lhff;

    sget-object v4, Lhfe;->c:Lhfe;

    invoke-virtual {v3, v4}, Lhff;->d(Lhfe;)V

    iget-object v3, p0, Lhfp;->b:Lhfq;

    iget-object v3, v3, Lhfq;->p:Lhff;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-boolean v5, v3, Lhff;->c:Z

    invoke-static {v5}, Lmoz;->p(Z)V

    iget-object v3, v3, Lhff;->d:Lnwn;

    iget-object v5, v3, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_0
    iget-object v3, v3, Lnwn;->b:Lnws;

    check-cast v3, Lnkt;

    sget-object v5, Lnkt;->j:Lnkt;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v3, Lnkt;->a:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v3, Lnkt;->a:I

    iput-object v4, v3, Lnkt;->g:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    iget-object v0, p0, Lhfp;->b:Lhfq;

    iget-object v0, v0, Lhfq;->p:Lhff;

    invoke-virtual {v0, v4}, Lhff;->f(I)V

    iget-object v0, p0, Lhfp;->b:Lhfq;

    iget-object v0, v0, Lhfq;->n:Lhfb;

    invoke-virtual {v0, v1}, Lhfb;->e(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lhfp;->b:Lhfq;

    iget-object v2, v0, Lhfq;->h:Landroid/content/Context;

    iget-object v4, v0, Lhfq;->i:Landroid/content/pm/PackageManager;

    iget-object v0, v0, Lhfq;->j:Landroid/content/res/Resources;

    invoke-static {v1, v4, v0}, Lhgj;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne v2, v1, :cond_3

    iget-object v0, p0, Lhfp;->b:Lhfq;

    iget-object v0, v0, Lhfq;->p:Lhff;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lhff;->f(I)V

    return-void

    :cond_3
    iget-object v1, p0, Lhfp;->b:Lhfq;

    iget-object v2, v1, Lhfq;->h:Landroid/content/Context;

    iget-object v1, v1, Lhfq;->j:Landroid/content/res/Resources;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const v0, 0x7f1404ad

    invoke-virtual {v1, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lhfp;->b:Lhfq;

    iget-object v0, v0, Lhfq;->p:Lhff;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lhff;->f(I)V

    iget-object v0, p0, Lhfp;->b:Lhfq;

    iget-object v2, v0, Lhfq;->o:Landroid/os/Handler;

    new-instance v3, Lhfi;

    invoke-direct {v3, v0, v1}, Lhfi;-><init>(Lhfq;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lhfp;->b:Lhfq;

    iget-object v0, v0, Lhfq;->w:Ligo;

    invoke-virtual {v0}, Ligo;->p()V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lhfp;->b:Lhfq;

    const/4 v1, 0x0

    iput-object v1, v0, Lhfq;->u:Landroid/content/pm/ResolveInfo;

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

.method public final synthetic j()V
    .locals 0

    return-void
.end method

.method public k()V
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

.method public n()V
    .locals 2

    iget-object v0, p0, Lhfp;->b:Lhfq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lhfq;->r(ZZ)V

    return-void
.end method

.method public final synthetic o()V
    .locals 0

    return-void
.end method

.method public final synthetic p(J)V
    .locals 0

    return-void
.end method
