.class public final Lkjr;
.super Ljava/lang/Object;

# interfaces
.implements Lkhw;


# instance fields
.field public final a:Lrb;

.field private final b:Ljava/util/Map;

.field private final c:Looo;

.field private final d:Looo;

.field private final e:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lrb;Ljava/util/Map;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkjr;->a:Lrb;

    iput-object p2, p0, Lkjr;->b:Ljava/util/Map;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lolp;->j(J)Looo;

    move-result-object p1

    iput-object p1, p0, Lkjr;->c:Looo;

    invoke-static {v0, v1}, Lolp;->j(J)Looo;

    move-result-object p1

    iput-object p1, p0, Lkjr;->d:Looo;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lljr;->ao(Ljava/lang/Iterable;)I

    move-result p2

    invoke-static {p2}, Lljr;->V(I)I

    move-result p2

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    invoke-static {p2, v1}, Lonm;->f(II)I

    move-result p2

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfj;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lrj;

    iget p2, p2, Lrj;->a:I

    invoke-static {p2}, Lsc;->a(I)Lsc;

    move-result-object p2

    invoke-static {p2, v1}, Lljr;->aM(Ljava/lang/Object;Ljava/lang/Object;)Lojd;

    move-result-object p2

    iget-object v1, p2, Lojd;->a:Ljava/lang/Object;

    iget-object p2, p2, Lojd;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lkjr;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Lojc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lojc;-><init>([B)V

    throw v0
.end method

.method public final b(Lkib;)V
    .locals 2

    new-instance v0, Lkjp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lkjp;-><init>(Lkjr;Lkib;Loku;)V

    invoke-static {v0}, Lone;->k(Lomo;)Ljava/lang/Object;

    return-void
.end method

.method public final c()V
    .locals 2

    new-instance v0, Lojc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lojc;-><init>([B)V

    throw v0
.end method

.method public final d(Lkib;)V
    .locals 0

    invoke-static {p1}, Lljr;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkjr;->e(Ljava/util/List;)V

    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 2

    new-instance v0, Lkjq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lkjq;-><init>(Lkjr;Ljava/util/List;Loku;)V

    invoke-static {v0}, Lone;->k(Lomo;)Ljava/lang/Object;

    return-void
.end method

.method public final f(Ljava/util/List;)Ljava/util/List;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkib;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lkib;->c:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkfj;

    iget-object v5, p0, Lkjr;->b:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrj;

    if-eqz v4, :cond_0

    iget v4, v4, Lrj;->a:I

    invoke-static {v4}, Lsc;->a(I)Lsc;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v3, v1, Lkib;->d:Ljava/util/Set;

    invoke-static {v3}, Lkel;->b(Ljava/util/Collection;)Lkfg;

    move-result-object v3

    iget-object v6, p0, Lkjr;->e:Ljava/util/Map;

    iget-object v7, p0, Lkjr;->d:Looo;

    new-instance v10, Lkjo;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lkjo;-><init>(Lkfg;Ljava/util/Map;Looo;[B[B)V

    new-instance v4, Lrx;

    invoke-static {v10}, Lljr;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lojy;->a:Lojy;

    invoke-direct {v4, v2, v6, v6, v5}, Lrx;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lkjr;->c:Looo;

    invoke-virtual {v2}, Looo;->c()J

    move-result-wide v4

    iget-object v1, v1, Lkib;->c:Ljava/util/Set;

    invoke-virtual {v3, v4, v5, v1}, Lkfg;->bu(JLjava/util/Set;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method
