.class final Lirp;
.super Lite;


# instance fields
.field final synthetic a:Lirq;


# direct methods
.method public constructor <init>(Lirq;)V
    .locals 0

    iput-object p1, p0, Lirp;->a:Lirq;

    invoke-direct {p0, p1}, Lite;-><init>(Litf;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lirp;->a:Lirq;

    iget-object v0, v0, Lirq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lirp;->a:Lirq;

    iget-object v1, v0, Lirq;->a:Lhiu;

    iget-object v0, v0, Lirq;->b:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
