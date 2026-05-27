.class final Ldai;
.super Ljava/lang/Object;

# interfaces
.implements Ldaw;


# instance fields
.field final synthetic a:Ldaj;


# direct methods
.method public constructor <init>(Ldaj;)V
    .locals 0

    iput-object p1, p0, Ldai;->a:Ldaj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Ldai;->a:Ldaj;

    invoke-virtual {v0}, Ldaj;->h()V

    iget-object v0, p0, Ldai;->a:Ldaj;

    invoke-virtual {v0}, Ldaj;->o()V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Ldai;->a:Ldaj;

    iget-object v0, v0, Ldaj;->g:Lgft;

    invoke-interface {v0}, Lgft;->c()Lkab;

    move-result-object v0

    invoke-static {v0}, Ldaj;->r(Lkab;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldai;->a:Ldaj;

    invoke-virtual {v0}, Ldaj;->c()V

    :cond_0
    iget-object v0, p0, Ldai;->a:Ldaj;

    iget-object v1, v0, Ldaj;->r:Lhyn;

    iget-object v0, v0, Ldaj;->s:Liko;

    invoke-static {v1, v0}, Lbze;->af(Lhyn;Liko;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldai;->a:Ldaj;

    iget-object v0, v0, Ldaj;->q:Ldav;

    sget-object v1, Ldav;->a:Ldav;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ldai;->a:Ldaj;

    invoke-virtual {v0}, Ldaj;->e()V

    :cond_1
    iget-object v0, p0, Ldai;->a:Ldaj;

    iget-object v0, v0, Ldaj;->k:Lgeh;

    invoke-interface {v0}, Lgeh;->M()V

    iget-object v0, p0, Ldai;->a:Ldaj;

    iget-object v0, v0, Ldaj;->d:Lhrq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhrq;->b(Z)V

    return-void
.end method
