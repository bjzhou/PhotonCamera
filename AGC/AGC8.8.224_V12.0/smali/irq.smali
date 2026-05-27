.class public final Lirq;
.super Litf;

# interfaces
.implements Lhiv;


# instance fields
.field public final a:Lhiu;

.field public final b:Lhiw;

.field public final c:Lhiw;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lita;)V
    .locals 4

    invoke-direct {p0, p1}, Litf;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;)V

    new-instance p1, Liro;

    invoke-direct {p1, p0}, Liro;-><init>(Lirq;)V

    new-instance v0, Lhiw;

    const/4 v1, 0x0

    new-array v2, v1, [Lhis;

    invoke-direct {v0, p1, v2}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v0, p0, Lirq;->b:Lhiw;

    new-instance p1, Lirp;

    invoke-direct {p1, p0}, Lirp;-><init>(Lirq;)V

    new-instance v2, Lhiw;

    const/4 v3, 0x1

    new-array v3, v3, [Lhis;

    aput-object p2, v3, v1

    invoke-direct {v2, p1, v3}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v2, p0, Lirq;->c:Lhiw;

    new-instance p1, Lhiu;

    invoke-direct {p1, v0, v1}, Lhiu;-><init>(Lhiw;Z)V

    iput-object p1, p0, Lirq;->a:Lhiu;

    invoke-virtual {p1}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lirq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lirq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Litc;

    invoke-virtual {v0}, Litc;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lirq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lirq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Litc;

    invoke-virtual {v0}, Litc;->b()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lirq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Lirq;->b:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lirq;->c:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lirq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lirq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->d()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Ljcb;->l(Lhiv;)V

    return-void
.end method
