.class public final Lklx;
.super Ljava/lang/Object;

# interfaces
.implements Lklj;


# instance fields
.field private final a:Lklj;


# direct methods
.method public constructor <init>(Lklj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lklx;->a:Lklj;

    return-void
.end method


# virtual methods
.method public final a(Lkll;)Lkli;
    .locals 1

    iget-object v0, p0, Lklx;->a:Lklj;

    invoke-interface {v0, p1}, Lklj;->a(Lkll;)Lkli;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lkll;
    .locals 1

    iget-object v0, p0, Lklx;->a:Lklj;

    invoke-interface {v0}, Lklj;->b()Lkll;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Lkll;
    .locals 1

    iget-object v0, p0, Lklx;->a:Lklj;

    invoke-interface {v0, p1}, Lklj;->c(I)Lkll;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Lkll;
    .locals 1

    iget-object v0, p0, Lklx;->a:Lklj;

    invoke-interface {v0, p1}, Lklj;->d(Ljava/lang/String;)Lkll;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lklv;)Lkll;
    .locals 1

    iget-object v0, p0, Lklx;->a:Lklj;

    invoke-interface {v0, p1}, Lklj;->e(Lklv;)Lkll;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lkll;)Lfuz;
    .locals 1

    new-instance v0, Lfuz;

    invoke-virtual {p0, p1}, Lklx;->a(Lkll;)Lkli;

    move-result-object p1

    invoke-direct {v0, p1}, Lfuz;-><init>(Lkli;)V

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lklx;->a:Lklj;

    invoke-interface {v0}, Lklj;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final h(Lklv;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lklx;->a:Lklj;

    invoke-interface {v0, p1}, Lklj;->h(Lklv;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lklx;->a:Lklj;

    invoke-interface {v0}, Lklj;->i()Z

    move-result v0

    return v0
.end method

.method public final j(Lklv;)Z
    .locals 1

    iget-object v0, p0, Lklx;->a:Lklj;

    invoke-interface {v0, p1}, Lklj;->j(Lklv;)Z

    move-result p1

    return p1
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lklx;->a:Lklj;

    invoke-interface {v0}, Lklj;->k()Z

    move-result v0

    return v0
.end method
