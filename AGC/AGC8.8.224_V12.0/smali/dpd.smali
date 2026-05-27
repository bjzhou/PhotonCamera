.class final Ldpd;
.super Ldou;


# instance fields
.field final synthetic b:Ldpg;


# direct methods
.method public constructor <init>(Ldpg;)V
    .locals 0

    iput-object p1, p0, Ldpd;->b:Ldpg;

    invoke-direct {p0, p1}, Ldou;-><init>(Ldox;)V

    return-void
.end method


# virtual methods
.method public final b(IIF)V
    .locals 1

    iget-object v0, p0, Ldpd;->b:Ldpg;

    iget-object v0, v0, Ldpg;->f:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0, p1, p2, p3}, Ldou;->b(IIF)V

    iget-object p1, p0, Ldpd;->b:Ldpg;

    iget-object p2, p1, Ldpg;->f:Lhiu;

    iget-object p1, p1, Ldpg;->h:Lhiw;

    invoke-virtual {p2, p1}, Lhiu;->g(Lhiw;)V

    return-void
.end method
