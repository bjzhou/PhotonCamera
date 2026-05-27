.class final Lgrl;
.super Lgru;


# instance fields
.field final synthetic a:Lgrv;


# direct methods
.method public constructor <init>(Lgrv;)V
    .locals 0

    iput-object p1, p0, Lgrl;->a:Lgrv;

    invoke-direct {p0, p1}, Lgru;-><init>(Lgrv;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lgrl;->a:Lgrv;

    iget-object v0, v0, Lgrv;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lgrl;->a:Lgrv;

    iget-object v1, v0, Lgrv;->c:Lhiu;

    iget-object v0, v0, Lgrv;->d:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
