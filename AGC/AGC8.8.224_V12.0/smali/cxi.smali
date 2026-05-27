.class final Lcxi;
.super Lcya;


# instance fields
.field final synthetic a:Lcxl;


# direct methods
.method public constructor <init>(Lcxl;)V
    .locals 0

    iput-object p1, p0, Lcxi;->a:Lcxl;

    invoke-direct {p0, p1}, Lcya;-><init>(Lcyd;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcxi;->a:Lcxl;

    iget-object v0, v0, Lcxl;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lcya;->a()V

    iget-object v0, p0, Lcxi;->a:Lcxl;

    iget-object v1, v0, Lcxl;->a:Lhiu;

    iget-object v0, v0, Lcxl;->d:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcxi;->a:Lcxl;

    iget-object v0, v0, Lcxl;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lcya;->b()V

    iget-object v0, p0, Lcxi;->a:Lcxl;

    iget-object v1, v0, Lcxl;->a:Lhiu;

    iget-object v0, v0, Lcxl;->c:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
