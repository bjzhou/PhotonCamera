.class public final Lkxw;
.super Ljava/lang/Object;

# interfaces
.implements Lkxv;


# instance fields
.field private final a:Llen;


# direct methods
.method public constructor <init>(Llen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxw;->a:Llen;

    return-void
.end method


# virtual methods
.method public final a()Lkxy;
    .locals 3

    iget-object v0, p0, Lkxw;->a:Llen;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v1

    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    invoke-static {v1}, Llhe;->l(Lnou;)Llhe;

    move-result-object v2

    invoke-interface {v0, v2}, Llen;->c(Llhe;)Llep;

    move-result-object v0

    new-instance v2, Lkxx;

    invoke-direct {v2, v1, v0}, Lkxx;-><init>(Lnph;Llep;)V

    return-object v2
.end method

.method public final b()Lnou;
    .locals 1

    iget-object v0, p0, Lkxw;->a:Llen;

    check-cast v0, Lleo;

    iget-object v0, v0, Lleo;->g:Lnph;

    invoke-static {v0}, Lkzz;->a(Lnou;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lkxw;->a:Llen;

    check-cast v0, Lleo;

    iget-object v0, v0, Lleo;->g:Lnph;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnou;->cancel(Z)Z

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lkxw;->a:Llen;

    invoke-interface {v0}, Llen;->b()V

    return-void
.end method
