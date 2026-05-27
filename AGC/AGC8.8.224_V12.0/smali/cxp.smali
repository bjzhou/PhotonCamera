.class final Lcxp;
.super Lcyj;


# instance fields
.field final synthetic a:Lcxr;


# direct methods
.method public constructor <init>(Lcxr;)V
    .locals 0

    iput-object p1, p0, Lcxp;->a:Lcxr;

    invoke-direct {p0, p1}, Lcyj;-><init>(Lcyl;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lcxp;->a:Lcxr;

    iget-object v0, v0, Lcxr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lcyj;->b()V

    iget-object v0, p0, Lcxp;->a:Lcxr;

    iget-object v1, v0, Lcxr;->a:Lhiu;

    iget-object v0, v0, Lcxr;->d:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
