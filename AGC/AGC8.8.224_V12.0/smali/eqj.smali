.class final Leqj;
.super Leqp;


# instance fields
.field final synthetic a:Leqn;


# direct methods
.method public constructor <init>(Leqn;)V
    .locals 0

    iput-object p1, p0, Leqj;->a:Leqn;

    invoke-direct {p0, p1}, Leqp;-><init>(Leqt;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Leqj;->a:Leqn;

    iget-object v0, v0, Leqn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Leqj;->a:Leqn;

    iget-object v1, v0, Leqn;->a:Lhiu;

    iget-object v0, v0, Leqn;->c:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
