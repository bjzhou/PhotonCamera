.class final Lhzw;
.super Lial;


# instance fields
.field final synthetic a:Lhzy;


# direct methods
.method public constructor <init>(Lhzy;)V
    .locals 0

    iput-object p1, p0, Lhzw;->a:Lhzy;

    invoke-direct {p0, p1}, Lial;-><init>(Lian;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lhzw;->a:Lhzy;

    iget-object v0, v0, Lhzy;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lhzw;->a:Lhzy;

    iget-object v1, v0, Lhzy;->a:Lhiu;

    iget-object v0, v0, Lhzy;->c:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
