.class Lhtu;
.super Lhtm;


# instance fields
.field final synthetic a:Lhtz;


# direct methods
.method public constructor <init>(Lhtz;)V
    .locals 0

    iput-object p1, p0, Lhtu;->a:Lhtz;

    invoke-direct {p0}, Lhtm;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 2

    iget-object v0, p0, Lhtu;->a:Lhtz;

    sget-object v1, Lika;->r:Lika;

    invoke-virtual {v0, v1}, Lhtz;->B(Lika;)V

    iget-object v0, p0, Lhtu;->a:Lhtz;

    invoke-virtual {v0}, Lhtz;->v()V

    iget-object v0, p0, Lhtu;->a:Lhtz;

    invoke-virtual {v0}, Lhtz;->u()V

    iget-object v0, p0, Lhtu;->a:Lhtz;

    iget-object v0, v0, Lhtz;->c:Libj;

    invoke-interface {v0}, Libj;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lhtu;->a:Lhtz;

    iget-object v0, v0, Lhtz;->c:Libj;

    invoke-interface {v0}, Libj;->m()V

    iget-object v0, p0, Lhtu;->a:Lhtz;

    invoke-virtual {v0}, Lhtz;->w()V

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method
