.class final Lgvh;
.super Lgvr;


# instance fields
.field final synthetic a:Lgvs;


# direct methods
.method public constructor <init>(Lgvs;)V
    .locals 0

    iput-object p1, p0, Lgvh;->a:Lgvs;

    invoke-direct {p0, p1}, Lgvr;-><init>(Lgvs;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Lgvh;->a:Lgvs;

    iget-object v0, v0, Lgvs;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lgvh;->a:Lgvs;

    iget-object v1, v0, Lgvs;->c:Lhiu;

    iget-object v0, v0, Lgvs;->f:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lgvh;->a:Lgvs;

    iget-object v0, v0, Lgvs;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lgvr;->d()V

    iget-object v0, p0, Lgvh;->a:Lgvs;

    iget-object v1, v0, Lgvs;->c:Lhiu;

    iget-object v0, v0, Lgvs;->d:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
