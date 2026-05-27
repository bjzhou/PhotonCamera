.class final Lcxs;
.super Lcym;


# instance fields
.field final synthetic a:Lcxv;


# direct methods
.method public constructor <init>(Lcxv;)V
    .locals 0

    iput-object p1, p0, Lcxs;->a:Lcxv;

    invoke-direct {p0, p1}, Lcym;-><init>(Lcyp;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcxs;->a:Lcxv;

    iget-object v0, v0, Lcxv;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lcym;->a()V

    iget-object v0, p0, Lcxs;->a:Lcxv;

    iget-object v1, v0, Lcxv;->a:Lhiu;

    iget-object v0, v0, Lcxv;->d:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcxs;->a:Lcxv;

    iget-object v0, v0, Lcxv;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lcym;->b()V

    iget-object v0, p0, Lcxs;->a:Lcxv;

    iget-object v1, v0, Lcxv;->a:Lhiu;

    iget-object v0, v0, Lcxv;->c:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
