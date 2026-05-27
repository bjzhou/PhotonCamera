.class final Lcxy;
.super Lcyw;


# instance fields
.field final synthetic a:Lcxz;


# direct methods
.method public constructor <init>(Lcxz;)V
    .locals 0

    iput-object p1, p0, Lcxy;->a:Lcxz;

    invoke-direct {p0, p1}, Lcyw;-><init>(Lcyx;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lcxy;->a:Lcxz;

    iget-object v0, v0, Lcxz;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lcyw;->b()V

    iget-object v0, p0, Lcxy;->a:Lcxz;

    iget-object v1, v0, Lcxz;->a:Lhiu;

    iget-object v0, v0, Lcxz;->c:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcxy;->a:Lcxz;

    iget-object v0, v0, Lcxz;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lcyw;->d()V

    iget-object v0, p0, Lcxy;->a:Lcxz;

    iget-object v1, v0, Lcxz;->a:Lhiu;

    iget-object v0, v0, Lcxz;->b:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
