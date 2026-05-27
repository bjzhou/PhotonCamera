.class public final Lhzy;
.super Lian;

# interfaces
.implements Lhiv;


# instance fields
.field public final a:Lhiu;

.field public final b:Lhiw;

.field public final c:Lhiw;

.field private final g:Lhiw;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lian;-><init>()V

    new-instance v0, Lhzv;

    invoke-direct {v0, p0}, Lhzv;-><init>(Lhzy;)V

    new-instance v1, Lhiw;

    const/4 v2, 0x0

    new-array v3, v2, [Lhis;

    invoke-direct {v1, v0, v3}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v1, p0, Lhzy;->g:Lhiw;

    new-instance v0, Lhzw;

    invoke-direct {v0, p0}, Lhzw;-><init>(Lhzy;)V

    new-instance v3, Lhiw;

    new-array v4, v2, [Lhis;

    invoke-direct {v3, v0, v4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v3, p0, Lhzy;->b:Lhiw;

    new-instance v0, Lhzx;

    invoke-direct {v0, p0}, Lhzx;-><init>(Lhzy;)V

    new-instance v3, Lhiw;

    new-array v4, v2, [Lhis;

    invoke-direct {v3, v0, v4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v3, p0, Lhzy;->c:Lhiw;

    new-instance v0, Lhiu;

    invoke-direct {v0, v1, v2}, Lhiu;-><init>(Lhiw;Z)V

    iput-object v0, p0, Lhzy;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lhzy;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhzy;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Liad;

    invoke-virtual {v0}, Liad;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lhzy;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhzy;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Liad;

    invoke-virtual {v0}, Liad;->b()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lhzy;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhzy;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Liad;

    invoke-virtual {v0}, Liad;->c()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lhzy;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhzy;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Liad;

    invoke-virtual {v0}, Liad;->d()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lhzy;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Lhzy;->g:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lhzy;->b:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lhzy;->c:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lhzy;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lhzy;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->d()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Ljcb;->l(Lhiv;)V

    return-void
.end method
