.class public final Lmws;
.super Lmwt;

# interfaces
.implements Ljava/util/NavigableMap;
.implements Lj$/util/Map;


# static fields
.field private static final c:Lmws;

.field private static final serialVersionUID:J


# instance fields
.field public final transient a:Lmzb;

.field public final transient b:Lmvv;

.field private transient d:Lmws;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lmws;

    sget-object v1, Lmyj;->a:Lmyj;

    invoke-static {v1}, Lmww;->Q(Ljava/util/Comparator;)Lmzb;

    move-result-object v1

    sget v2, Lmvv;->d:I

    sget-object v2, Lmyu;->a:Lmvv;

    invoke-direct {v0, v1, v2}, Lmws;-><init>(Lmzb;Lmvv;)V

    sput-object v0, Lmws;->c:Lmws;

    return-void
.end method

.method public constructor <init>(Lmzb;Lmvv;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmws;-><init>(Lmzb;Lmvv;Lmws;)V

    return-void
.end method

.method public constructor <init>(Lmzb;Lmvv;Lmws;)V
    .locals 0

    invoke-direct {p0}, Lmwt;-><init>()V

    iput-object p1, p0, Lmws;->a:Lmzb;

    iput-object p2, p0, Lmws;->b:Lmvv;

    iput-object p3, p0, Lmws;->d:Lmws;

    return-void
.end method

.method public static a()Lmwq;
    .locals 2

    new-instance v0, Lmwq;

    sget-object v1, Lmyj;->a:Lmyj;

    invoke-direct {v0, v1}, Lmwq;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static h(Ljava/util/Comparator;)Lmws;
    .locals 2

    sget-object v0, Lmyj;->a:Lmyj;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lmws;->c:Lmws;

    return-object p0

    :cond_0
    new-instance v0, Lmws;

    invoke-static {p0}, Lmww;->Q(Ljava/util/Comparator;)Lmzb;

    move-result-object p0

    sget v1, Lmvv;->d:I

    sget-object v1, Lmyu;->a:Lmvv;

    invoke-direct {v0, p0, v1}, Lmws;-><init>(Lmzb;Lmvv;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final v(II)Lmws;
    .locals 3

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lmws;->size()I

    move-result p1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Lmws;->comparator()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p1}, Lmws;->h(Ljava/util/Comparator;)Lmws;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Lmws;

    iget-object v1, p0, Lmws;->a:Lmzb;

    invoke-virtual {v1, p1, p2}, Lmzb;->g(II)Lmzb;

    move-result-object v1

    iget-object v2, p0, Lmws;->b:Lmvv;

    invoke-virtual {v2, p1, p2}, Lmvv;->b(II)Lmvv;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lmws;-><init>(Lmzb;Lmvv;)V

    return-object v0
.end method


# virtual methods
.method public final cB()Lmwn;
    .locals 1

    invoke-virtual {p0}, Lmwa;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmza;->a:Lmza;

    goto :goto_0

    :cond_0
    new-instance v0, Lmwp;

    invoke-direct {v0, p0}, Lmwp;-><init>(Lmws;)V

    :goto_0
    return-object v0
.end method

.method public final cC()Lmwn;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final cE()Z
    .locals 1

    iget-object v0, p0, Lmws;->a:Lmzb;

    invoke-virtual {v0}, Lmzb;->cA()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmws;->b:Lmvv;

    invoke-virtual {v0}, Lmvv;->cA()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmws;->u(Ljava/lang/Object;Z)Lmws;

    move-result-object p1

    invoke-virtual {p1}, Lmws;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lmws;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Llyh;->u(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lmws;->a:Lmzb;

    iget-object v0, v0, Lmww;->b:Ljava/util/Comparator;

    return-object v0
.end method

.method public final d()Lmvm;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final bridge synthetic descendingKeySet()Ljava/util/NavigableSet;
    .locals 1

    iget-object v0, p0, Lmws;->a:Lmzb;

    invoke-virtual {v0}, Lmww;->cx()Lmww;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 3

    iget-object v0, p0, Lmws;->d:Lmws;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmwa;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmws;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lmyk;->b(Ljava/util/Comparator;)Lmyk;

    move-result-object v0

    invoke-virtual {v0}, Lmyk;->a()Lmyk;

    move-result-object v0

    invoke-static {v0}, Lmws;->h(Ljava/util/Comparator;)Lmws;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lmws;

    iget-object v1, p0, Lmws;->a:Lmzb;

    invoke-virtual {v1}, Lmww;->cx()Lmww;

    move-result-object v1

    check-cast v1, Lmzb;

    iget-object v2, p0, Lmws;->b:Lmvv;

    invoke-virtual {v2}, Lmvv;->a()Lmvv;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lmws;-><init>(Lmzb;Lmvv;Lmws;)V

    goto :goto_0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lmwa;->r()Lmwn;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lmvm;
    .locals 1

    iget-object v0, p0, Lmws;->b:Lmvv;

    return-object v0
.end method

.method public final firstEntry()Ljava/util/Map$Entry;
    .locals 2

    invoke-virtual {p0}, Lmwa;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmwa;->r()Lmwn;

    move-result-object v0

    invoke-virtual {v0}, Lmvm;->v()Lmvv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmws;->a:Lmzb;

    invoke-virtual {v0}, Lmww;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmws;->k(Ljava/lang/Object;Z)Lmws;

    move-result-object p1

    invoke-virtual {p1}, Lmws;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lmws;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Llyh;->u(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lmws;->a:Lmzb;

    const/4 v1, -0x1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v2, v0, Lmzb;->d:Lmvv;

    iget-object v0, v0, Lmzb;->b:Ljava/util/Comparator;

    invoke-static {v2, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p1, :cond_1

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    const/4 p1, -0x1

    :cond_1
    :goto_1
    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    iget-object v0, p0, Lmws;->b:Lmvv;

    invoke-virtual {v0, p1}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmws;->k(Ljava/lang/Object;Z)Lmws;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmws;->k(Ljava/lang/Object;Z)Lmws;

    move-result-object p1

    return-object p1
.end method

.method public final higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmws;->u(Ljava/lang/Object;Z)Lmws;

    move-result-object p1

    invoke-virtual {p1}, Lmws;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lmws;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Llyh;->u(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Z)Lmws;
    .locals 1

    iget-object v0, p0, Lmws;->a:Lmzb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Lmzb;->e(Ljava/lang/Object;Z)I

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lmws;->v(II)Lmws;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lmws;->a:Lmzb;

    return-object v0
.end method

.method public final lastEntry()Ljava/util/Map$Entry;
    .locals 2

    invoke-virtual {p0}, Lmwa;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmwa;->r()Lmwn;

    move-result-object v0

    invoke-virtual {v0}, Lmvm;->v()Lmvv;

    move-result-object v0

    invoke-virtual {p0}, Lmws;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmws;->a:Lmzb;

    invoke-virtual {v0}, Lmww;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmws;->k(Ljava/lang/Object;Z)Lmws;

    move-result-object p1

    invoke-virtual {p1}, Lmws;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lmws;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Llyh;->u(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic navigableKeySet()Ljava/util/NavigableSet;
    .locals 1

    iget-object v0, p0, Lmws;->a:Lmzb;

    return-object v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic s()Lmwn;
    .locals 1

    iget-object v0, p0, Lmws;->a:Lmzb;

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lmws;->b:Lmvv;

    invoke-virtual {v0}, Lmvv;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lmws;->t(Ljava/lang/Object;ZLjava/lang/Object;Z)Lmws;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lmws;->t(Ljava/lang/Object;ZLjava/lang/Object;Z)Lmws;

    move-result-object p1

    return-object p1
.end method

.method public final t(Ljava/lang/Object;ZLjava/lang/Object;Z)Lmws;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lmws;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "expected fromKey <= toKey but %s > %s"

    invoke-static {v0, v1, p1, p3}, Lmoz;->m(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p3, p4}, Lmws;->k(Ljava/lang/Object;Z)Lmws;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lmws;->u(Ljava/lang/Object;Z)Lmws;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmws;->u(Ljava/lang/Object;Z)Lmws;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmws;->u(Ljava/lang/Object;Z)Lmws;

    move-result-object p1

    return-object p1
.end method

.method public final u(Ljava/lang/Object;Z)Lmws;
    .locals 1

    iget-object v0, p0, Lmws;->a:Lmzb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Lmzb;->f(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0}, Lmws;->size()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lmws;->v(II)Lmws;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lmws;->b:Lmvv;

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lmwr;

    invoke-direct {v0, p0}, Lmwr;-><init>(Lmws;)V

    return-object v0
.end method
