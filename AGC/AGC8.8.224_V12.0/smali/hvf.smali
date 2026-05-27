.class public final Lhvf;
.super Lhvp;

# interfaces
.implements Lhiv;


# instance fields
.field private final a:Lhiu;

.field private final b:Lhiw;


# direct methods
.method public constructor <init>(Lhvt;Lhtg;)V
    .locals 4

    invoke-direct {p0}, Lhvp;-><init>()V

    new-instance v0, Lhvo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhvo;-><init>(I)V

    new-instance v2, Lhiw;

    const/4 v3, 0x2

    new-array v3, v3, [Lhis;

    aput-object p1, v3, v1

    const/4 p1, 0x1

    aput-object p2, v3, p1

    invoke-direct {v2, v0, v3}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v2, p0, Lhvf;->b:Lhiw;

    new-instance p1, Lhiu;

    invoke-direct {p1, v2, v1}, Lhiu;-><init>(Lhiw;Z)V

    iput-object p1, p0, Lhvf;->a:Lhiu;

    invoke-virtual {p1}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 1

    iget-object v0, p0, Lhvf;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Lhvf;->b:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lhvf;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lhvf;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->d()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Ljcb;->l(Lhiv;)V

    return-void
.end method
