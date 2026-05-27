.class final Ldpj;
.super Ldpb;


# instance fields
.field final synthetic b:Ldpk;


# direct methods
.method public constructor <init>(Ldpk;)V
    .locals 0

    iput-object p1, p0, Ldpj;->b:Ldpk;

    invoke-direct {p0, p1}, Ldpb;-><init>(Ldpc;)V

    return-void
.end method


# virtual methods
.method public final b(Ldok;)V
    .locals 1

    iget-object v0, p0, Ldpj;->b:Ldpk;

    iget-object v0, v0, Ldpk;->n:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0, p1}, Ldpb;->b(Ldok;)V

    iget-object p1, p0, Ldpj;->b:Ldpk;

    iget-object v0, p1, Ldpk;->n:Lhiu;

    iget-object p1, p1, Ldpk;->p:Lhiw;

    invoke-virtual {v0, p1}, Lhiu;->g(Lhiw;)V

    return-void
.end method
