.class Lhfk;
.super Ljava/lang/Object;

# interfaces
.implements Lhfh;


# instance fields
.field final synthetic b:Lhfq;


# direct methods
.method public constructor <init>(Lhfq;)V
    .locals 0

    iput-object p1, p0, Lhfk;->b:Lhfq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final q(Lchd;)V
    .locals 1

    iget-object v0, p0, Lhfk;->b:Lhfq;

    iput-object p1, v0, Lhfq;->t:Lchd;

    iget-object p1, v0, Lhfq;->p:Lhff;

    invoke-virtual {p1}, Lhff;->b()V

    iget-object p1, p0, Lhfk;->b:Lhfq;

    iget-object p1, p1, Lhfq;->p:Lhff;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lhff;->e(I)V

    iget-object p1, p0, Lhfk;->b:Lhfq;

    iget-object p1, p1, Lhfq;->p:Lhff;

    sget-object v0, Lhfe;->b:Lhfe;

    invoke-virtual {p1, v0}, Lhff;->d(Lhfe;)V

    iget-object p1, p0, Lhfk;->b:Lhfq;

    iget-object p1, p1, Lhfq;->p:Lhff;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lhff;->f(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Lchd;Z)V
    .locals 0

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lmoz;->e(Z)V

    invoke-direct {p0, p1}, Lhfk;->q(Lchd;)V

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

.method public cj()V
    .locals 1

    iget-object v0, p0, Lhfk;->b:Lhfq;

    iget-object v0, v0, Lhfq;->p:Lhff;

    invoke-virtual {v0}, Lhff;->a()V

    return-void
.end method

.method public d(Lchd;Z)V
    .locals 0

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lmoz;->e(Z)V

    invoke-direct {p0, p1}, Lhfk;->q(Lchd;)V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lhfk;->b:Lhfq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lhfq;->r(ZZ)V

    return-void
.end method

.method public final synthetic g()V
    .locals 0

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

.method public final synthetic p(J)V
    .locals 0

    return-void
.end method
