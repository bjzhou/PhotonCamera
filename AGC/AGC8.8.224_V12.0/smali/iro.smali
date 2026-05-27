.class final Liro;
.super Litd;


# instance fields
.field final synthetic a:Lirq;


# direct methods
.method public constructor <init>(Lirq;)V
    .locals 0

    iput-object p1, p0, Liro;->a:Lirq;

    invoke-direct {p0, p1}, Litd;-><init>(Litf;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Liro;->a:Lirq;

    iget-object v0, v0, Lirq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Liro;->a:Lirq;

    iget-object v1, v0, Lirq;->a:Lhiu;

    iget-object v0, v0, Lirq;->c:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
