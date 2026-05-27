.class final Lfdg;
.super Lfdo;


# instance fields
.field final synthetic a:Lfdm;


# direct methods
.method public constructor <init>(Lfdm;)V
    .locals 0

    iput-object p1, p0, Lfdg;->a:Lfdm;

    invoke-direct {p0, p1}, Lfdo;-><init>(Lfdu;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lfdg;->a:Lfdm;

    iget-object v0, v0, Lfdm;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lfdg;->a:Lfdm;

    iget-object v1, v0, Lfdm;->a:Lhiu;

    iget-object v0, v0, Lfdm;->c:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
