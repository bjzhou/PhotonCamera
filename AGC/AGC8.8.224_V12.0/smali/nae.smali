.class public final Lnae;
.super Lmyi;

# interfaces
.implements Lmzi;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient d:Lnae;


# direct methods
.method public constructor <init>(Lmzi;)V
    .locals 0

    invoke-direct {p0, p1}, Lmyi;-><init>(Lmyb;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmyi;->a:Lmyb;

    return-object v0
.end method

.method protected final synthetic b()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lmyi;->a:Lmyb;

    return-object v0
.end method

.method public final bridge synthetic c()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lmyi;->a:Lmyb;

    invoke-interface {v0}, Lmzi;->p()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Lmjy;->B(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lmyi;->a:Lmyb;

    invoke-interface {v0}, Lmzi;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lnae;->p()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lmya;
    .locals 1

    iget-object v0, p0, Lmyi;->a:Lmyb;

    invoke-interface {v0}, Lmzi;->j()Lmya;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lmya;
    .locals 1

    iget-object v0, p0, Lmyi;->a:Lmyb;

    invoke-interface {v0}, Lmzi;->k()Lmya;

    move-result-object v0

    return-object v0
.end method

.method public final l()Lmya;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final m()Lmya;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final n()Lmzi;
    .locals 2

    iget-object v0, p0, Lnae;->d:Lnae;

    if-nez v0, :cond_0

    new-instance v0, Lnae;

    iget-object v1, p0, Lmyi;->a:Lmyb;

    invoke-interface {v1}, Lmzi;->n()Lmzi;

    move-result-object v1

    invoke-direct {v0, v1}, Lnae;-><init>(Lmzi;)V

    iput-object p0, v0, Lnae;->d:Lnae;

    iput-object v0, p0, Lnae;->d:Lnae;

    :cond_0
    return-object v0
.end method

.method protected final synthetic o()Lmyb;
    .locals 1

    iget-object v0, p0, Lmyi;->a:Lmyb;

    return-object v0
.end method

.method public final p()Ljava/util/NavigableSet;
    .locals 1

    invoke-super {p0}, Lmyi;->f()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public final q(Ljava/lang/Object;ILjava/lang/Object;I)Lmzi;
    .locals 1

    iget-object v0, p0, Lmyi;->a:Lmyb;

    invoke-interface {v0, p1, p2, p3, p4}, Lmzi;->q(Ljava/lang/Object;ILjava/lang/Object;I)Lmzi;

    move-result-object p1

    invoke-static {p1}, Llyh;->p(Lmzi;)Lmzi;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;I)Lmzi;
    .locals 1

    iget-object v0, p0, Lmyi;->a:Lmyb;

    invoke-interface {v0, p1, p2}, Lmzi;->r(Ljava/lang/Object;I)Lmzi;

    move-result-object p1

    invoke-static {p1}, Llyh;->p(Lmzi;)Lmzi;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;I)Lmzi;
    .locals 1

    iget-object v0, p0, Lmyi;->a:Lmyb;

    invoke-interface {v0, p1, p2}, Lmzi;->s(Ljava/lang/Object;I)Lmzi;

    move-result-object p1

    invoke-static {p1}, Llyh;->p(Lmzi;)Lmzi;

    move-result-object p1

    return-object p1
.end method
