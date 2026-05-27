.class final Link;
.super Linh;


# instance fields
.field final synthetic b:Lini;


# direct methods
.method public constructor <init>(Lini;)V
    .locals 0

    iput-object p1, p0, Link;->b:Lini;

    invoke-direct {p0, p1}, Linh;-><init>(Lini;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Link;->b:Lini;

    iget-object v0, v0, Lini;->b:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Link;->b:Lini;

    iget-object v1, v0, Lini;->b:Lhiu;

    iget-object v0, v0, Lini;->c:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Link;->b:Lini;

    iget-object v0, v0, Lini;->b:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Link;->b:Lini;

    iget-object v1, v0, Lini;->b:Lhiu;

    iget-object v0, v0, Lini;->c:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
