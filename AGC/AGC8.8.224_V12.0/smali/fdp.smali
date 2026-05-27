.class Lfdp;
.super Lfdn;


# instance fields
.field final synthetic b:Lfdu;


# direct methods
.method public constructor <init>(Lfdu;)V
    .locals 0

    iput-object p1, p0, Lfdp;->b:Lfdu;

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

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lfdp;->b:Lfdu;

    iget-object v0, v0, Lfdu;->l:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    sget-object v1, Lika;->m:Lika;

    invoke-virtual {v0, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfdp;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lfdp;->b:Lfdu;

    iget-object v0, v0, Lfdu;->l:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    invoke-virtual {v0}, Lika;->name()Ljava/lang/String;

    iget-object v0, p0, Lfdp;->b:Lfdu;

    iget-object v0, v0, Lfdu;->h:Liff;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Liff;->G(Z)V

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method
