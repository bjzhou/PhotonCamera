.class final Lcxj;
.super Lcyb;


# instance fields
.field final synthetic a:Lcxl;


# direct methods
.method public constructor <init>(Lcxl;)V
    .locals 0

    iput-object p1, p0, Lcxj;->a:Lcxl;

    invoke-direct {p0, p1}, Lcyb;-><init>(Lcyd;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Lcxj;->a:Lcxl;

    iget-object v0, v0, Lcxl;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lcyb;->c()V

    iget-object v0, p0, Lcxj;->a:Lcxl;

    iget-object v1, v0, Lcxl;->a:Lhiu;

    iget-object v0, v0, Lcxl;->d:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
