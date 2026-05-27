.class final Lhnr;
.super Lhpd;


# instance fields
.field final synthetic a:Lhnu;


# direct methods
.method public constructor <init>(Lhnu;)V
    .locals 0

    iput-object p1, p0, Lhnr;->a:Lhnu;

    invoke-direct {p0, p1}, Lhpd;-><init>(Lhpg;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    iget-object v0, p0, Lhnr;->a:Lhnu;

    iget-object v0, v0, Lhnu;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lhpd;->d()V

    iget-object v0, p0, Lhnr;->a:Lhnu;

    iget-object v1, v0, Lhnu;->a:Lhiu;

    iget-object v0, v0, Lhnu;->e:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
