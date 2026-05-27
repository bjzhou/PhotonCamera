.class final Ldpe;
.super Ldov;


# instance fields
.field final synthetic b:Ldpg;


# direct methods
.method public constructor <init>(Ldpg;)V
    .locals 0

    iput-object p1, p0, Ldpe;->b:Ldpg;

    invoke-direct {p0, p1}, Ldov;-><init>(Ldox;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Ldpe;->b:Ldpg;

    iget-object v0, v0, Ldpg;->f:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Ldpe;->b:Ldpg;

    iget-object v1, v0, Ldpg;->f:Lhiu;

    iget-object v0, v0, Ldpg;->g:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final d(ZZ)V
    .locals 1

    iget-object v0, p0, Ldpe;->b:Ldpg;

    iget-object v0, v0, Ldpg;->f:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0, p1, p2}, Ldov;->d(ZZ)V

    iget-object p1, p0, Ldpe;->b:Ldpg;

    iget-object p2, p1, Ldpg;->f:Lhiu;

    iget-object p1, p1, Ldpg;->i:Lhiw;

    invoke-virtual {p2, p1}, Lhiu;->g(Lhiw;)V

    return-void
.end method
