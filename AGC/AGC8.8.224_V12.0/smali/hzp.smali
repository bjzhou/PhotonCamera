.class final Lhzp;
.super Liae;


# instance fields
.field final synthetic a:Lhzu;


# direct methods
.method public constructor <init>(Lhzu;)V
    .locals 0

    iput-object p1, p0, Lhzp;->a:Lhzu;

    invoke-direct {p0, p1}, Liae;-><init>(Liaj;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lhzp;->a:Lhzu;

    iget-object v0, v0, Lhzu;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lhzp;->a:Lhzu;

    iget-object v1, v0, Lhzu;->a:Lhiu;

    iget-object v0, v0, Lhzu;->b:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lhzp;->a:Lhzu;

    iget-object v0, v0, Lhzu;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lhzp;->a:Lhzu;

    iget-object v1, v0, Lhzu;->a:Lhiu;

    iget-object v0, v0, Lhzu;->c:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
