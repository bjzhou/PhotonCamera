.class final Lhnt;
.super Lhpf;


# instance fields
.field final synthetic a:Lhnu;


# direct methods
.method public constructor <init>(Lhnu;)V
    .locals 0

    iput-object p1, p0, Lhnt;->a:Lhnu;

    invoke-direct {p0, p1}, Lhpf;-><init>(Lhpg;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lhnt;->a:Lhnu;

    iget-object v0, v0, Lhnu;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lhpf;->b()V

    iget-object v0, p0, Lhnt;->a:Lhnu;

    iget-object v1, v0, Lhnu;->a:Lhiu;

    iget-object v0, v0, Lhnu;->d:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lhnt;->a:Lhnu;

    iget-object v0, v0, Lhnu;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lhnt;->a:Lhnu;

    iget-object v1, v0, Lhnu;->a:Lhiu;

    iget-object v0, v0, Lhnu;->b:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
