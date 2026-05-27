.class final Lhuu;
.super Lhtq;


# instance fields
.field final synthetic b:Lhva;


# direct methods
.method public constructor <init>(Lhva;)V
    .locals 0

    iput-object p1, p0, Lhuu;->b:Lhva;

    invoke-direct {p0, p1}, Lhtq;-><init>(Lhtz;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lhuu;->b:Lhva;

    iget-object v0, v0, Lhva;->q:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lhtq;->a()V

    iget-object v0, p0, Lhuu;->b:Lhva;

    iget-object v1, v0, Lhva;->q:Lhiu;

    iget-object v0, v0, Lhva;->w:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
