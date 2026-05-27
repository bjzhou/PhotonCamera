.class public final Lhvn;
.super Lhwb;

# interfaces
.implements Lhiv;


# instance fields
.field private final b:Lhiu;

.field private final c:Lhiw;


# direct methods
.method public constructor <init>(Ljwb;Lcyh;Lcyl;)V
    .locals 3

    invoke-direct {p0, p1}, Lhwb;-><init>(Ljwb;)V

    new-instance p1, Lhwa;

    invoke-direct {p1, p0}, Lhwa;-><init>(Lhwb;)V

    new-instance v0, Lhiw;

    const/4 v1, 0x2

    new-array v1, v1, [Lhis;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-direct {v0, p1, v1}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v0, p0, Lhvn;->c:Lhiw;

    new-instance p1, Lhiu;

    invoke-direct {p1, v0, v2}, Lhiu;-><init>(Lhiw;Z)V

    iput-object p1, p0, Lhvn;->b:Lhiu;

    invoke-virtual {p1}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 1

    iget-object v0, p0, Lhvn;->b:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Lhvn;->c:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lhvn;->b:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lhvn;->b:Lhiu;

    invoke-virtual {v0}, Lhiu;->d()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Ljcb;->l(Lhiv;)V

    return-void
.end method
