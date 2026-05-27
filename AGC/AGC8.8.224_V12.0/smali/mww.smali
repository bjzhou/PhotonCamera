.class public abstract Lmww;
.super Lmwx;

# interfaces
.implements Ljava/util/NavigableSet;
.implements Lmzh;


# instance fields
.field final transient b:Ljava/util/Comparator;

.field transient c:Lmww;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Lmwx;-><init>()V

    iput-object p1, p0, Lmww;->b:Ljava/util/Comparator;

    return-void
.end method

.method public static varargs P(Ljava/util/Comparator;I[Ljava/lang/Object;)Lmww;
    .locals 5

    if-nez p1, :cond_0

    invoke-static {p0}, Lmww;->Q(Ljava/util/Comparator;)Lmzb;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p2, p1}, Llyh;->n([Ljava/lang/Object;I)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v3, p2, v1

    add-int/lit8 v4, v2, -0x1

    aget-object v4, p2, v4

    invoke-interface {p0, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    aput-object v3, p2, v2

    move v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-static {p2, v2, p1, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    array-length p1, p2

    shr-int/2addr p1, v0

    if-ge v2, p1, :cond_3

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    :cond_3
    new-instance p1, Lmzb;

    invoke-static {p2, v2}, Lmvv;->h([Ljava/lang/Object;I)Lmvv;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lmzb;-><init>(Lmvv;Ljava/util/Comparator;)V

    return-object p1
.end method

.method static Q(Ljava/util/Comparator;)Lmzb;
    .locals 2

    sget-object v0, Lmyj;->a:Lmyj;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lmzb;->a:Lmzb;

    return-object p0

    :cond_0
    new-instance v0, Lmzb;

    sget v1, Lmvv;->d:I

    sget-object v1, Lmyu;->a:Lmvv;

    invoke-direct {v0, v1, p0}, Lmzb;-><init>(Lmvv;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final O(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lmww;->b:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmww;->s(Ljava/lang/Object;Z)Lmww;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Llyh;->R(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lmww;->b:Ljava/util/Comparator;

    return-object v0
.end method

.method public cx()Lmww;
    .locals 1

    iget-object v0, p0, Lmww;->c:Lmww;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmww;->k()Lmww;

    move-result-object v0

    iput-object v0, p0, Lmww;->c:Lmww;

    iput-object p0, v0, Lmww;->c:Lmww;

    :cond_0
    return-object v0
.end method

.method public abstract cy()Lnac;
.end method

.method public abstract cz()Lnac;
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lmww;->cy()Lnac;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 1

    invoke-virtual {p0}, Lmww;->cx()Lmww;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmww;->cz()Lnac;

    move-result-object v0

    invoke-virtual {v0}, Lnac;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmww;->m(Ljava/lang/Object;Z)Lmww;

    move-result-object p1

    invoke-virtual {p1}, Lmww;->cy()Lnac;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Llyh;->M(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmww;->m(Ljava/lang/Object;Z)Lmww;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    invoke-virtual {p0, p1}, Lmww;->l(Ljava/lang/Object;)Lmww;

    move-result-object p1

    return-object p1
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmww;->s(Ljava/lang/Object;Z)Lmww;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Llyh;->R(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lmww;->cz()Lnac;

    move-result-object v0

    return-object v0
.end method

.method public abstract k()Lmww;
.end method

.method public l(Ljava/lang/Object;)Lmww;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmww;->m(Ljava/lang/Object;Z)Lmww;

    move-result-object p1

    return-object p1
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmww;->cy()Lnac;

    move-result-object v0

    invoke-virtual {v0}, Lnac;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmww;->m(Ljava/lang/Object;Z)Lmww;

    move-result-object p1

    invoke-virtual {p1}, Lmww;->cy()Lnac;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Llyh;->M(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/Object;Z)Lmww;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lmww;->n(Ljava/lang/Object;Z)Lmww;

    move-result-object p1

    return-object p1
.end method

.method public abstract n(Ljava/lang/Object;Z)Lmww;
.end method

.method public o(Ljava/lang/Object;Ljava/lang/Object;)Lmww;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lmww;->p(Ljava/lang/Object;ZLjava/lang/Object;Z)Lmww;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/Object;ZLjava/lang/Object;Z)Lmww;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmww;->b:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lmww;->q(Ljava/lang/Object;ZLjava/lang/Object;Z)Lmww;

    move-result-object p1

    return-object p1
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract q(Ljava/lang/Object;ZLjava/lang/Object;Z)Lmww;
.end method

.method public r(Ljava/lang/Object;)Lmww;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmww;->s(Ljava/lang/Object;Z)Lmww;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/Object;Z)Lmww;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lmww;->t(Ljava/lang/Object;Z)Lmww;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lmww;->p(Ljava/lang/Object;ZLjava/lang/Object;Z)Lmww;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmww;->o(Ljava/lang/Object;Ljava/lang/Object;)Lmww;

    move-result-object p1

    return-object p1
.end method

.method public abstract t(Ljava/lang/Object;Z)Lmww;
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmww;->s(Ljava/lang/Object;Z)Lmww;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    invoke-virtual {p0, p1}, Lmww;->r(Ljava/lang/Object;)Lmww;

    move-result-object p1

    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lmwv;

    iget-object v1, p0, Lmww;->b:Ljava/util/Comparator;

    invoke-virtual {p0}, Lmvm;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmwv;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;)V

    return-object v0
.end method
