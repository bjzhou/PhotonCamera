.class Lfdo;
.super Lfdn;


# instance fields
.field final synthetic b:Lfdu;


# direct methods
.method public constructor <init>(Lfdu;)V
    .locals 0

    iput-object p1, p0, Lfdo;->b:Lfdu;

    invoke-direct {p0}, Lfdn;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lfdo;->b:Lfdu;

    iget-object v0, v0, Lfdu;->l:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    invoke-virtual {v0}, Lika;->name()Ljava/lang/String;

    iget-object v0, p0, Lfdo;->b:Lfdu;

    iget-object v0, v0, Lfdu;->h:Liff;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Liff;->G(Z)V

    iget-object v0, p0, Lfdo;->b:Lfdu;

    iget-object v0, v0, Lfdu;->k:Lebl;

    invoke-virtual {v0}, Lebl;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfdo;->b:Lfdu;

    iget-object v0, v0, Lfdu;->i:Liec;

    invoke-interface {v0}, Liec;->g()V

    iget-object v0, p0, Lfdo;->b:Lfdu;

    iget-object v0, v0, Lfdu;->i:Liec;

    invoke-interface {v0}, Liec;->e()V

    iget-object v0, p0, Lfdo;->b:Lfdu;

    iget-object v0, v0, Lfdu;->j:Lgft;

    const-class v1, Lfdu;

    invoke-interface {v0, v1}, Lgft;->a(Ljava/lang/Class;)V

    :cond_0
    iget-object v0, p0, Lfdo;->b:Lfdu;

    invoke-virtual {v0}, Lfdu;->k()V

    iget-object v0, p0, Lfdo;->b:Lfdu;

    iget-object v0, v0, Lfdu;->h:Liff;

    invoke-interface {v0}, Liff;->L()V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lfdo;->b:Lfdu;

    iget-object v0, v0, Lfdu;->m:Lfdc;

    invoke-virtual {v0}, Lfdc;->c()V

    iget-object v0, p0, Lfdo;->b:Lfdu;

    invoke-virtual {v0}, Lfdu;->n()V

    iget-object v0, p0, Lfdo;->b:Lfdu;

    invoke-virtual {v0}, Lfdu;->m()V

    iget-object v0, p0, Lfdo;->b:Lfdu;

    invoke-virtual {v0}, Lfdu;->l()V

    iget-object v0, p0, Lfdo;->b:Lfdu;

    iget-object v0, v0, Lfdu;->j:Lgft;

    const-class v1, Lfdu;

    invoke-interface {v0, v1}, Lgft;->b(Ljava/lang/Class;)V

    return-void
.end method
