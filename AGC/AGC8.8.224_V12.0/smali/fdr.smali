.class Lfdr;
.super Lfdn;


# instance fields
.field final synthetic b:Lfdu;


# direct methods
.method public constructor <init>(Lfdu;)V
    .locals 0

    iput-object p1, p0, Lfdr;->b:Lfdu;

    invoke-direct {p0}, Lfdn;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
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
    .locals 1

    iget-object v0, p0, Lfdr;->b:Lfdu;

    iget-object v0, v0, Lfdu;->l:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    invoke-virtual {v0}, Lika;->name()Ljava/lang/String;

    iget-object v0, p0, Lfdr;->b:Lfdu;

    iget-object v0, v0, Lfdu;->i:Liec;

    invoke-interface {v0}, Liec;->f()V

    iget-object v0, p0, Lfdr;->b:Lfdu;

    invoke-virtual {v0}, Lfdu;->l()V

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method
