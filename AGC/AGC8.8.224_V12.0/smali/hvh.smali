.class final Lhvh;
.super Lhvs;


# instance fields
.field final synthetic a:Lhvi;


# direct methods
.method public constructor <init>(Lhvi;)V
    .locals 0

    iput-object p1, p0, Lhvh;->a:Lhvi;

    invoke-direct {p0, p1}, Lhvs;-><init>(Lhvt;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lhvh;->a:Lhvi;

    iget-object v0, v0, Lhvi;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lhvh;->a:Lhvi;

    iget-object v1, v0, Lhvi;->a:Lhiu;

    iget-object v0, v0, Lhvi;->b:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
