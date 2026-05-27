.class final Lcxm;
.super Lcyf;


# instance fields
.field final synthetic a:Lcyh;


# direct methods
.method public constructor <init>(Lcyh;)V
    .locals 0

    iput-object p1, p0, Lcxm;->a:Lcyh;

    invoke-direct {p0, p1}, Lcyf;-><init>(Lcyh;)V

    return-void
.end method


# virtual methods
.method public final a(Lfuz;)V
    .locals 1

    iget-object v0, p0, Lcxm;->a:Lcyh;

    iget-object v0, v0, Lcyh;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0, p1}, Lcyf;->a(Lfuz;)V

    iget-object p1, p0, Lcxm;->a:Lcyh;

    iget-object v0, p1, Lcyh;->c:Lhiu;

    iget-object p1, p1, Lcyh;->e:Lhiw;

    invoke-virtual {v0, p1}, Lhiu;->g(Lhiw;)V

    return-void
.end method
