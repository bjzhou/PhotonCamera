.class final Lgvg;
.super Lgvq;


# instance fields
.field final synthetic a:Lgvs;


# direct methods
.method public constructor <init>(Lgvs;)V
    .locals 0

    iput-object p1, p0, Lgvg;->a:Lgvs;

    invoke-direct {p0, p1}, Lgvq;-><init>(Lgvs;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lgvg;->a:Lgvs;

    iget-object v0, v0, Lgvs;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lgvg;->a:Lgvs;

    iget-object v1, v0, Lgvs;->c:Lhiu;

    iget-object v0, v0, Lgvs;->e:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
