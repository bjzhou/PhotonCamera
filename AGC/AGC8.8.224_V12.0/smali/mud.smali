.class final Lmud;
.super Lmww;


# instance fields
.field private final a:Lmww;


# direct methods
.method public constructor <init>(Lmww;)V
    .locals 1

    iget-object v0, p1, Lmww;->b:Ljava/util/Comparator;

    invoke-static {v0}, Lmyk;->b(Ljava/util/Comparator;)Lmyk;

    move-result-object v0

    invoke-virtual {v0}, Lmyk;->a()Lmyk;

    move-result-object v0

    invoke-direct {p0, v0}, Lmww;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lmud;->a:Lmww;

    return-void
.end method


# virtual methods
.method public final cA()Z
    .locals 1

    iget-object v0, p0, Lmud;->a:Lmww;

    invoke-virtual {v0}, Lmww;->cA()Z

    move-result v0

    return v0
.end method

.method public final ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmud;->a:Lmww;

    invoke-virtual {v0, p1}, Lmww;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lmud;->a:Lmww;

    invoke-virtual {v0, p1}, Lmww;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final cx()Lmww;
    .locals 1

    iget-object v0, p0, Lmud;->a:Lmww;

    return-object v0
.end method

.method public final cy()Lnac;
    .locals 1

    iget-object v0, p0, Lmud;->a:Lmww;

    invoke-virtual {v0}, Lmww;->cz()Lnac;

    move-result-object v0

    return-object v0
.end method

.method public final cz()Lnac;
    .locals 1

    iget-object v0, p0, Lmud;->a:Lmww;

    invoke-virtual {v0}, Lmww;->cy()Lnac;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lmud;->cy()Lnac;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 1

    iget-object v0, p0, Lmud;->a:Lmww;

    return-object v0
.end method

.method public final floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmud;->a:Lmww;

    invoke-virtual {v0, p1}, Lmww;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmud;->a:Lmww;

    invoke-virtual {v0, p1}, Lmww;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lmud;->cz()Lnac;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lmww;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmud;->a:Lmww;

    invoke-virtual {v0, p1}, Lmww;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final n(Ljava/lang/Object;Z)Lmww;
    .locals 1

    iget-object v0, p0, Lmud;->a:Lmww;

    invoke-virtual {v0, p1, p2}, Lmww;->s(Ljava/lang/Object;Z)Lmww;

    move-result-object p1

    invoke-virtual {p1}, Lmww;->cx()Lmww;

    move-result-object p1

    return-object p1
.end method

.method public final q(Ljava/lang/Object;ZLjava/lang/Object;Z)Lmww;
    .locals 1

    iget-object v0, p0, Lmud;->a:Lmww;

    invoke-virtual {v0, p3, p4, p1, p2}, Lmww;->p(Ljava/lang/Object;ZLjava/lang/Object;Z)Lmww;

    move-result-object p1

    invoke-virtual {p1}, Lmww;->cx()Lmww;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lmud;->a:Lmww;

    invoke-virtual {v0}, Lmww;->size()I

    move-result v0

    return v0
.end method

.method public final t(Ljava/lang/Object;Z)Lmww;
    .locals 1

    iget-object v0, p0, Lmud;->a:Lmww;

    invoke-virtual {v0, p1, p2}, Lmww;->m(Ljava/lang/Object;Z)Lmww;

    move-result-object p1

    invoke-virtual {p1}, Lmww;->cx()Lmww;

    move-result-object p1

    return-object p1
.end method
