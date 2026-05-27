.class final Lhuj;
.super Lhtf;


# instance fields
.field final synthetic b:Lhtg;


# direct methods
.method public constructor <init>(Lhtg;)V
    .locals 0

    iput-object p1, p0, Lhuj;->b:Lhtg;

    invoke-direct {p0, p1}, Lhtf;-><init>(Lhtg;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lhuj;->b:Lhtg;

    iget-object v0, v0, Lhtg;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lhuj;->b:Lhtg;

    iget-object v1, v0, Lhtg;->e:Lhiu;

    iget-object v0, v0, Lhtg;->f:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
