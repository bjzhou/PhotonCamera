.class final Lhul;
.super Lhtj;


# instance fields
.field final synthetic b:Lhun;


# direct methods
.method public constructor <init>(Lhun;)V
    .locals 0

    iput-object p1, p0, Lhul;->b:Lhun;

    invoke-direct {p0, p1}, Lhtj;-><init>(Lhtl;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lhul;->b:Lhun;

    iget-object v0, v0, Lhun;->o:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lhul;->b:Lhun;

    iget-object v1, v0, Lhun;->o:Lhiu;

    iget-object v0, v0, Lhun;->p:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
