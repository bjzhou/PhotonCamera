.class final Lgve;
.super Lgvn;


# instance fields
.field final synthetic a:Lgvs;


# direct methods
.method public constructor <init>(Lgvs;)V
    .locals 0

    iput-object p1, p0, Lgve;->a:Lgvs;

    invoke-direct {p0, p1}, Lgvn;-><init>(Lgvs;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lgve;->a:Lgvs;

    iget-object v0, v0, Lgvs;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lgve;->a:Lgvs;

    iget-object v1, v0, Lgvs;->c:Lhiu;

    iget-object v0, v0, Lgvs;->f:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lgve;->a:Lgvs;

    iget-object v0, v0, Lgvs;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lgve;->a:Lgvs;

    iget-object v1, v0, Lgvs;->c:Lhiu;

    iget-object v0, v0, Lgvs;->e:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
