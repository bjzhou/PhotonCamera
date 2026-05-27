.class public Lkos;
.super Ljava/lang/Object;

# interfaces
.implements Lkoo;


# instance fields
.field protected final c:Lkoo;


# direct methods
.method public constructor <init>(Lkoo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkos;->c:Lkoo;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lkos;->c:Lkoo;

    invoke-interface {v0}, Lkoo;->a()I

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkos;->c:Lkoo;

    invoke-interface {v0}, Lkoo;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lkox;)V
    .locals 1

    iget-object v0, p0, Lkos;->c:Lkoo;

    invoke-interface {v0, p1}, Lkoo;->c(Lkox;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lkos;->c:Lkoo;

    invoke-interface {v0}, Lkoo;->close()V

    return-void
.end method

.method public final d(Ljava/util/List;Lkom;Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lkos;->c:Lkoo;

    invoke-interface {v0, p1, p2, p3}, Lkoo;->d(Ljava/util/List;Lkom;Landroid/os/Handler;)V

    return-void
.end method

.method public final e(Ljava/util/List;Lkom;Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lkos;->c:Lkoo;

    invoke-interface {v0, p1, p2, p3}, Lkoo;->e(Ljava/util/List;Lkom;Landroid/os/Handler;)V

    return-void
.end method

.method public final f(Ljava/util/List;Lkom;Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lkos;->c:Lkoo;

    invoke-interface {v0, p1, p2, p3}, Lkoo;->f(Ljava/util/List;Lkom;Landroid/os/Handler;)V

    return-void
.end method

.method public final g(I)V
    .locals 1

    iget-object v0, p0, Lkos;->c:Lkoo;

    invoke-interface {v0, p1}, Lkoo;->g(I)V

    return-void
.end method

.method public final h(I)Lkkr;
    .locals 1

    iget-object v0, p0, Lkos;->c:Lkoo;

    invoke-interface {v0, p1}, Lkoo;->h(I)Lkkr;

    move-result-object p1

    return-object p1
.end method
