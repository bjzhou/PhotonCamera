.class final Lcxo;
.super Lcyi;


# instance fields
.field final synthetic a:Lcxr;


# direct methods
.method public constructor <init>(Lcxr;)V
    .locals 0

    iput-object p1, p0, Lcxo;->a:Lcxr;

    invoke-direct {p0, p1}, Lcyi;-><init>(Lcyl;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Lcxo;->a:Lcxr;

    iget-object v0, v0, Lcxr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lcyi;->c()V

    iget-object v0, p0, Lcxo;->a:Lcxr;

    iget-object v1, v0, Lcxr;->a:Lhiu;

    iget-object v0, v0, Lcxr;->c:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
