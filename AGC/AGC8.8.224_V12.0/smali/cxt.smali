.class final Lcxt;
.super Lcyn;


# instance fields
.field final synthetic a:Lcxv;


# direct methods
.method public constructor <init>(Lcxv;)V
    .locals 0

    iput-object p1, p0, Lcxt;->a:Lcxv;

    invoke-direct {p0, p1}, Lcyn;-><init>(Lcyp;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Lcxt;->a:Lcxv;

    iget-object v0, v0, Lcxv;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lcyn;->c()V

    iget-object v0, p0, Lcxt;->a:Lcxv;

    iget-object v1, v0, Lcxv;->a:Lhiu;

    iget-object v0, v0, Lcxv;->d:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
