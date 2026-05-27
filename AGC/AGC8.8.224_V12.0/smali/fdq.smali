.class Lfdq;
.super Lfdn;


# instance fields
.field final synthetic b:Lfdu;


# direct methods
.method public constructor <init>(Lfdu;)V
    .locals 0

    iput-object p1, p0, Lfdq;->b:Lfdu;

    invoke-direct {p0}, Lfdn;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public bW()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lfdq;->b:Lfdu;

    iget-object v0, v0, Lfdu;->l:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    sget-object v1, Lika;->m:Lika;

    invoke-virtual {v0, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfdq;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lfdq;->b:Lfdu;

    iget-object v0, v0, Lfdu;->l:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    invoke-virtual {v0}, Lika;->name()Ljava/lang/String;

    iget-object v0, p0, Lfdq;->b:Lfdu;

    iget-object v0, v0, Lfdu;->i:Liec;

    invoke-interface {v0}, Liec;->i()V

    iget-object v0, p0, Lfdq;->b:Lfdu;

    iget-object v0, v0, Lfdu;->i:Liec;

    invoke-interface {v0}, Liec;->f()V

    iget-object v0, p0, Lfdq;->b:Lfdu;

    iget-object v0, v0, Lfdu;->h:Liff;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Liff;->G(Z)V

    iget-object v0, p0, Lfdq;->b:Lfdu;

    invoke-virtual {v0}, Lfdu;->l()V

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method
