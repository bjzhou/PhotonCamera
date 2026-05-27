.class final Lhvl;
.super Lhvx;


# instance fields
.field final synthetic a:Lhvz;


# direct methods
.method public constructor <init>(Lhvz;)V
    .locals 0

    iput-object p1, p0, Lhvl;->a:Lhvz;

    invoke-direct {p0, p1}, Lhvx;-><init>(Lhvz;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    iget-object v0, p0, Lhvl;->a:Lhvz;

    iget-object v0, v0, Lhvz;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lhvx;->d()V

    iget-object v0, p0, Lhvl;->a:Lhvz;

    iget-object v1, v0, Lhvz;->e:Lhiu;

    iget-object v0, v0, Lhvz;->f:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
