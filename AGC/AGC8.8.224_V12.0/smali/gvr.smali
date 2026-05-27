.class Lgvr;
.super Lgvl;


# instance fields
.field final synthetic b:Lgvs;


# direct methods
.method public constructor <init>(Lgvs;)V
    .locals 0

    iput-object p1, p0, Lgvr;->b:Lgvs;

    invoke-direct {p0}, Lgvl;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lgvr;->b:Lgvs;

    iget-object v0, v0, Lgvs;->a:Lfbz;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lfbz;->ar(IZ)V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lgvr;->b:Lgvs;

    invoke-virtual {v0}, Lgvs;->i()V

    iget-object v0, p0, Lgvr;->b:Lgvs;

    iget-object v0, v0, Lgvs;->a:Lfbz;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lfbz;->ar(IZ)V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lgvr;->b:Lgvs;

    invoke-virtual {v0}, Lgvs;->j()V

    iget-object v0, p0, Lgvr;->b:Lgvs;

    iget-object v0, v0, Lgvs;->a:Lfbz;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lfbz;->ar(IZ)V

    return-void
.end method
