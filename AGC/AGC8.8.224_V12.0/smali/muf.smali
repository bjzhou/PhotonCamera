.class abstract Lmuf;
.super Lmus;

# interfaces
.implements Lmzi;


# instance fields
.field private transient a:Ljava/util/Comparator;

.field private transient b:Ljava/util/NavigableSet;

.field private transient c:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmus;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmuf;->c()Lmzi;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic b()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lmuf;->c()Lmzi;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()Lmzi;
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lmuf;->a:Ljava/util/Comparator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmuf;->c()Lmzi;

    move-result-object v0

    invoke-interface {v0}, Lmzi;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lmyk;->b(Ljava/util/Comparator;)Lmyk;

    move-result-object v0

    invoke-virtual {v0}, Lmyk;->a()Lmyk;

    move-result-object v0

    iput-object v0, p0, Lmuf;->a:Ljava/util/Comparator;

    :cond_0
    return-object v0
.end method

.method public abstract e()Ljava/util/Iterator;
.end method

.method public final bridge synthetic f()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lmuf;->p()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lmuf;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lmue;

    invoke-direct {v0, p0}, Lmue;-><init>(Lmuf;)V

    iput-object v0, p0, Lmuf;->c:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    invoke-static {p0}, Llyh;->q(Lmyb;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lmya;
    .locals 1

    invoke-virtual {p0}, Lmuf;->c()Lmzi;

    move-result-object v0

    invoke-interface {v0}, Lmzi;->k()Lmya;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lmya;
    .locals 1

    invoke-virtual {p0}, Lmuf;->c()Lmzi;

    move-result-object v0

    invoke-interface {v0}, Lmzi;->j()Lmya;

    move-result-object v0

    return-object v0
.end method

.method public final l()Lmya;
    .locals 1

    invoke-virtual {p0}, Lmuf;->c()Lmzi;

    move-result-object v0

    invoke-interface {v0}, Lmzi;->m()Lmya;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lmya;
    .locals 1

    invoke-virtual {p0}, Lmuf;->c()Lmzi;

    move-result-object v0

    invoke-interface {v0}, Lmzi;->l()Lmya;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lmzi;
    .locals 1

    invoke-virtual {p0}, Lmuf;->c()Lmzi;

    move-result-object v0

    return-object v0
.end method

.method protected final o()Lmyb;
    .locals 1

    invoke-virtual {p0}, Lmuf;->c()Lmzi;

    move-result-object v0

    return-object v0
.end method

.method public final p()Ljava/util/NavigableSet;
    .locals 1

    iget-object v0, p0, Lmuf;->b:Ljava/util/NavigableSet;

    if-nez v0, :cond_0

    new-instance v0, Lmzk;

    invoke-direct {v0, p0}, Lmzk;-><init>(Lmzi;)V

    iput-object v0, p0, Lmuf;->b:Ljava/util/NavigableSet;

    :cond_0
    return-object v0
.end method

.method public final q(Ljava/lang/Object;ILjava/lang/Object;I)Lmzi;
    .locals 1

    invoke-virtual {p0}, Lmuf;->c()Lmzi;

    move-result-object v0

    invoke-interface {v0, p3, p4, p1, p2}, Lmzi;->q(Ljava/lang/Object;ILjava/lang/Object;I)Lmzi;

    move-result-object p1

    invoke-interface {p1}, Lmzi;->n()Lmzi;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;I)Lmzi;
    .locals 1

    invoke-virtual {p0}, Lmuf;->c()Lmzi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmzi;->s(Ljava/lang/Object;I)Lmzi;

    move-result-object p1

    invoke-interface {p1}, Lmzi;->n()Lmzi;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;I)Lmzi;
    .locals 1

    invoke-virtual {p0}, Lmuf;->c()Lmzi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmzi;->r(Ljava/lang/Object;I)Lmzi;

    move-result-object p1

    invoke-interface {p1}, Lmzi;->n()Lmzi;

    move-result-object p1

    return-object p1
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmuo;->u()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Llyh;->k(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmus;->g()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
