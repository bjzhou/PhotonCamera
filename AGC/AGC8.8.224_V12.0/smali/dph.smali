.class final Ldph;
.super Ldoz;


# instance fields
.field final synthetic b:Ldpk;


# direct methods
.method public constructor <init>(Ldpk;)V
    .locals 0

    iput-object p1, p0, Ldph;->b:Ldpk;

    invoke-direct {p0, p1}, Ldoz;-><init>(Ldpc;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Ldph;->b:Ldpk;

    iget-object v0, v0, Ldpk;->n:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Ldph;->b:Ldpk;

    iget-object v1, v0, Ldpk;->n:Lhiu;

    iget-object v0, v0, Ldpk;->p:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final d(FLdok;)V
    .locals 1

    iget-object v0, p0, Ldph;->b:Ldpk;

    iget-object v0, v0, Ldpk;->n:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0, p1, p2}, Ldoz;->d(FLdok;)V

    iget-object p1, p0, Ldph;->b:Ldpk;

    iget-object p2, p1, Ldpk;->n:Lhiu;

    iget-object p1, p1, Ldpk;->q:Lhiw;

    invoke-virtual {p2, p1}, Lhiu;->g(Lhiw;)V

    return-void
.end method
