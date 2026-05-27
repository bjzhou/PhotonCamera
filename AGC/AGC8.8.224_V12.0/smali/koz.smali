.class public Lkoz;
.super Ljava/lang/Object;

# interfaces
.implements Lkpe;


# instance fields
.field private final a:Lkpe;


# direct methods
.method public constructor <init>(Lkpe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkoz;->a:Lkpe;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lkoz;->a:Lkpe;

    invoke-interface {v0}, Lkpe;->a()I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lkoz;->a:Lkpe;

    invoke-interface {v0}, Lkpe;->b()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lkoz;->a:Lkpe;

    invoke-interface {v0}, Lkpe;->c()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lkoz;->a:Lkpe;

    invoke-interface {v0}, Lkpe;->close()V

    return-void
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lkoz;->a:Lkpe;

    invoke-interface {v0}, Lkpe;->d()I

    move-result v0

    return v0
.end method

.method public final e()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lkoz;->a:Lkpe;

    invoke-interface {v0}, Lkpe;->e()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public f()Lkpb;
    .locals 1

    iget-object v0, p0, Lkoz;->a:Lkpe;

    invoke-interface {v0}, Lkpe;->f()Lkpb;

    move-result-object v0

    return-object v0
.end method

.method public g()Lkpb;
    .locals 1

    iget-object v0, p0, Lkoz;->a:Lkpe;

    invoke-interface {v0}, Lkpe;->g()Lkpb;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lkoz;->a:Lkpe;

    invoke-interface {v0}, Lkpe;->h()V

    return-void
.end method

.method public i(Lkpd;Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lkoz;->a:Lkpe;

    invoke-interface {v0, p1, p2}, Lkpe;->i(Lkpd;Landroid/os/Handler;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkoz;->a:Lkpe;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
