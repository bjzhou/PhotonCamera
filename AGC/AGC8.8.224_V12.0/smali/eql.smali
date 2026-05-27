.class final Leql;
.super Leqr;


# instance fields
.field final synthetic a:Leqn;


# direct methods
.method public constructor <init>(Leqn;)V
    .locals 0

    iput-object p1, p0, Leql;->a:Leqn;

    invoke-direct {p0, p1}, Leqr;-><init>(Leqt;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Leql;->a:Leqn;

    iget-object v0, v0, Leqn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Leql;->a:Leqn;

    iget-object v1, v0, Leqn;->a:Lhiu;

    iget-object v0, v0, Leqn;->b:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Leql;->a:Leqn;

    iget-object v0, v0, Leqn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Leql;->a:Leqn;

    iget-object v1, v0, Leqn;->a:Lhiu;

    iget-object v0, v0, Leqn;->c:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
